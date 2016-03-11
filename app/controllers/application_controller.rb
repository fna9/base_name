class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_app_auth
  before_action :load_current_user

  private
  def not_authenticated
    redirect_to login_path, alert: "Сначала войдите в систему!"
  end

  def load_current_user
    @current_user = current_user
  end

  def check_app_auth
	return true
    render 'access_denied' unless @current_user.try(:is_admin?)
  end

  def admin_permission
    unless @current_client.try(:admin?)
      flash[:danger]="Недостаточно прав для просмотра страницы"
      redirect_to root_path
    end
  end

end



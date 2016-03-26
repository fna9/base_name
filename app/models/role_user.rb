class RoleUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
  
  def is_admin?
    return self.role.short_name == 'Админ' 
  end
end

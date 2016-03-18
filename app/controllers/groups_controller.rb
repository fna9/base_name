class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)
    if params.has_key?(:group) and params[:group].has_key?(:students)
      @gs = params[:group][:students].map{ |gs| gs.to_i } - [0]
    end    
    if @group.save
      if @gs.kind_of?(Array)
        @group.group_students.delete_all
        @gs.each do |gr_id|
          GroupStudent.create(student_id: gr_id.to_i, group: @group)
        end
      end
    end
   

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Группа успешно создана.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    if params.has_key?(:group) and params[:group].has_key?(:students)
      @gs = params[:group][:students].map{ |gs| gs.to_i } - [0]
    end    
    if @group.update(group_params)
      if @gs.kind_of?(Array)
        @group.group_students.delete_all
        @gs.each do |gr_id|
          GroupStudent.create(student_id: gr_id.to_i, group: @group)
        end
      end
    end
  
    respond_to do |format|
      if @group.errors.size == 0
        format.html { redirect_to @group, notice: 'Группа успешно изменена.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Группа успешно удалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:title, :course, :semester)
    end
end

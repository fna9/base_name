class MessagersController < ApplicationController
  before_action :set_messager, only: [:show, :edit, :update, :destroy]

  # GET /messagers
  # GET /messagers.json
  def index
    @messagers = Messager.all
  end

  # GET /messagers/1
  # GET /messagers/1.json
  def show
  end

  # GET /messagers/new
  def new
    @messager = Messager.new
  end

  # GET /messagers/1/edit
  def edit
  end

  # POST /messagers
  # POST /messagers.json
  def create
    @messager = Messager.new(messager_params)

    respond_to do |format|
      if @messager.save
        format.html { redirect_to @messager, notice: 'Messager was successfully created.' }
        format.json { render :show, status: :created, location: @messager }
      else
        format.html { render :new }
        format.json { render json: @messager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messagers/1
  # PATCH/PUT /messagers/1.json
  def update
    respond_to do |format|
      if @messager.update(messager_params)
        format.html { redirect_to @messager, notice: 'Messager was successfully updated.' }
        format.json { render :show, status: :ok, location: @messager }
      else
        format.html { render :edit }
        format.json { render json: @messager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messagers/1
  # DELETE /messagers/1.json
  def destroy
    @messager.destroy
    respond_to do |format|
      format.html { redirect_to messagers_url, notice: 'Messager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messager
      @messager = Messager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messager_params
      params[:messager]
    end
end

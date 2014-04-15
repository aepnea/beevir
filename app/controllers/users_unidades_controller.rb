class UsersUnidadesController < ApplicationController
  before_action :set_user_unidad, only: [:show, :edit, :update, :destroy]

  # GET /users_unidades
  # GET /users_unidades.json
  def index
    @users_unidades = UserUnidad.all
  end

  # GET /users_unidades/1
  # GET /users_unidades/1.json
  def show
  end

  # GET /users_unidades/new
  def new
    @user_unidad = UserUnidad.new
  end

  # GET /users_unidades/1/edit
  def edit
  end

  # POST /users_unidades
  # POST /users_unidades.json
  def create
    @user_unidad = UserUnidad.new(user_unidad_params)

    respond_to do |format|
      if @user_unidad.save
        format.html { redirect_to @user_unidad, notice: 'User unidad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_unidad }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_unidades/1
  # PATCH/PUT /users_unidades/1.json
  def update
    respond_to do |format|
      if @user_unidad.update(user_unidad_params)
        format.html { redirect_to @user_unidad, notice: 'User unidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_unidades/1
  # DELETE /users_unidades/1.json
  def destroy
    @user_unidad.destroy
    respond_to do |format|
      format.html { redirect_to users_unidades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_unidad
      @user_unidad = UserUnidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_unidad_params
      params.require(:user_unidad).permit(:user_id, :unidad_id)
    end
end

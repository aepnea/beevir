class ComunidadesUsersController < ApplicationController
  before_action :set_comunidad_user, only: [:show, :edit, :update, :destroy]

  # GET /comunidades_users
  # GET /comunidades_users.json
  def index
  	cliente = current_user.cliente_id
    @comunidades_users = ComunidadUser.all(:joins => :user, :conditions => { :users => {:cliente_id => cliente}})
  end

  # GET /comunidades_users/1
  # GET /comunidades_users/1.json
  def show
  end

  # GET /comunidades_users/new
  def new

    @comunidad_user = ComunidadUser.new
    cliente = current_user.cliente_id
    @comunidades = Comunidad.where(cliente_id: cliente)

    user = User.where(cliente_id: cliente)
    @user = user.with_role(:admin)
  end

  # GET /comunidades_users/1/edit
  def edit
  end

  # POST /comunidades_users
  # POST /comunidades_users.json
  def create
   comunidad = params[:comunidad_user][:comunidad_id]
   user = params[:user_ids]
   @comunidad_user = user.map { |d| ComunidadUser.create(comunidad_id: comunidad, user_id: d) } 

    respond_to do |format|
      #if @comunidad_user.save
        format.html { redirect_to comunidades_users_path, notice: 'Comunidad user was successfully created.' }
      #  format.json { render action: 'show', status: :created, location: @comunidad_user }
      #else
      #  format.html { render action: 'new' }
      #  format.json { render json: @comunidad_user.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /comunidades_users/1
  # PATCH/PUT /comunidades_users/1.json
  def update
    respond_to do |format|
      if @comunidad_user.update(comunidad_user_params)
        format.html { redirect_to @comunidad_user, notice: 'Comunidad user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comunidad_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunidades_users/1
  # DELETE /comunidades_users/1.json
  def destroy
    @comunidad_user.destroy
    respond_to do |format|
      format.html { redirect_to comunidades_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comunidad_user
      @comunidad_user = ComunidadUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comunidad_user_params
      params.require(:comunidad_user).permit(:comunidad_id, :user_ids =>[])
    end
end

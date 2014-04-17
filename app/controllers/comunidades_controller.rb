class ComunidadesController < ApplicationController
 load_and_authorize_resource
  before_action :set_comunidad, only: [:show, :edit, :update, :destroy]
  skip_load_resource :only => [:create]


  # GET /comunidades
  # GET /comunidades.json
  def index
  # Listando solo lo perteneciente al cliente logueado
    cliente = current_user.cliente_id
    @comunidades = Comunidad.where(cliente_id: cliente)
  end

  # GET /comunidades/1
  # GET /comunidades/1.json
  def show
  end

  # GET /comunidades/new
  def new
    @comunidad = Comunidad.new
    @cliente = current_user.cliente_id
    @user = User.where(cliente_id: @cliente)
    @admin =  @user.with_role(:admin)
  end
  
  def nombre_apellido
    "#{self.nombre} #{self.apellido1}"
  end
  # GET /comunidades/1/edit
  def edit
  end

  # POST /comunidades
  # POST /comunidades.json
  def create
    @comunidad = Comunidad.new(comunidad_params)

    respond_to do |format|
      if @comunidad.save
        format.html { redirect_to @comunidad, notice: 'Comunidad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comunidad }
      else
        format.html { render action: 'new' }
        format.json { render json: @comunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comunidades/1
  # PATCH/PUT /comunidades/1.json
  def update
    respond_to do |format|
      if @comunidad.update(comunidad_params)
        format.html { redirect_to @comunidad, notice: 'Comunidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comunidades/1
  # DELETE /comunidades/1.json
  def destroy
    @comunidad.destroy
    respond_to do |format|
      format.html { redirect_to comunidades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comunidad
      @comunidad = Comunidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comunidad_params
      params.require(:comunidad).permit(:nombre, :direccion, :ciudad, :region_id, :tipo_unidad_id, :user_id)
    end
end

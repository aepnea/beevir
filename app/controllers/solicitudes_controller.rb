class SolicitudesController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /solicitudes
  # GET /solicitudes.json
  def index
    if session[:comunidad_id] == nil
      raise "Invalid Url"
    else
      cliente = current_user.cliente_id
      comunidad = session[:comunidad_id]
      @solicitudes = Solicitud.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{comunidad}'").references(:comunidad)
    end  

  end

  # GET /solicitudes/1
  # GET /solicitudes/1.json
  def show
  end

  # GET /solicitudes/new
  def new
    @solicitud = Solicitud.new
    comunidad = session[:comunidad_id]
    @unidad = Unidad.where(comunidad_id: "#{comunidad}")
    @estado = Estado.all
    @role = Role.where("id = '1' OR id = '5'")
  end

  # GET /solicitudes/1/edit
  def edit
    comunidad = session[:comunidad_id]
    @unidad = Unidad.where(comunidad_id: "#{comunidad}")
    @estado = Estado.all
    @role = Role.where("id = '1' OR id = '5'")
  end

  # POST /solicitudes
  # POST /solicitudes.json
  def create
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solicitud }
      else
        format.html { render action: 'new' }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitudes/1
  # PATCH/PUT /solicitudes/1.json
  def update
    respond_to do |format|
      if @solicitud.update(solicitud_params)
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitudes/1
  # DELETE /solicitudes/1.json
  def destroy
    @solicitud.destroy
    respond_to do |format|
      format.html { redirect_to solicitudes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitud_params
      params.require(:solicitud).permit(:titulo, :descripcion, :adjunto, :comunidad_id, :unidad_id, :estado_id, :role_id)
    end
end

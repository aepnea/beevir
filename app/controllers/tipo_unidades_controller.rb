class TipoUnidadesController < ApplicationController
 load_and_authorize_resource
  before_action :set_tipo_unidad, only: [:show, :edit, :update, :destroy]
  skip_load_resource :only => [:create]

  # GET /tipo_unidades
  # GET /tipo_unidades.json
  def index
    @tipo_unidades = TipoUnidad.all
  end

  # GET /tipo_unidades/1
  # GET /tipo_unidades/1.json
  def show
  end

  # GET /tipo_unidades/new
  def new
    @tipo_unidad = TipoUnidad.new
  end

  # GET /tipo_unidades/1/edit
  def edit
  end

  # POST /tipo_unidades
  # POST /tipo_unidades.json
  def create
    @tipo_unidad = TipoUnidad.new(tipo_unidad_params)

    respond_to do |format|
      if @tipo_unidad.save
        format.html { redirect_to @tipo_unidad, notice: 'Tipo unidad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_unidad }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_unidades/1
  # PATCH/PUT /tipo_unidades/1.json
  def update
    respond_to do |format|
      if @tipo_unidad.update(tipo_unidad_params)
        format.html { redirect_to @tipo_unidad, notice: 'Tipo unidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_unidades/1
  # DELETE /tipo_unidades/1.json
  def destroy
    @tipo_unidad.destroy
    respond_to do |format|
      format.html { redirect_to tipo_unidades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_unidad
      @tipo_unidad = TipoUnidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_unidad_params
      params.require(:tipo_unidad).permit(:nombre)
    end
end

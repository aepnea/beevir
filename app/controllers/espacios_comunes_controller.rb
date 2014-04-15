class EspaciosComunesController < ApplicationController
 load_and_authorize_resource
  before_action :set_espacio_comun, only: [:show, :edit, :update, :destroy]
  skip_load_resource :only => [:create]


  # GET /espacios_comunes
  # GET /espacios_comunes.json
  def index
    @espacios_comunes = EspacioComun.all
  end

  # GET /espacios_comunes/1
  # GET /espacios_comunes/1.json
  def show
  end

  # GET /espacios_comunes/new
  def new
    @espacio_comun = EspacioComun.new
  end

  # GET /espacios_comunes/1/edit
  def edit
  end

  # POST /espacios_comunes
  # POST /espacios_comunes.json
  def create
    @espacio_comun = EspacioComun.new(espacio_comun_params)

    respond_to do |format|
      if @espacio_comun.save
        format.html { redirect_to @espacio_comun, notice: 'Espacio comun was successfully created.' }
        format.json { render action: 'show', status: :created, location: @espacio_comun }
      else
        format.html { render action: 'new' }
        format.json { render json: @espacio_comun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /espacios_comunes/1
  # PATCH/PUT /espacios_comunes/1.json
  def update
    respond_to do |format|
      if @espacio_comun.update(espacio_comun_params)
        format.html { redirect_to @espacio_comun, notice: 'Espacio comun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @espacio_comun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /espacios_comunes/1
  # DELETE /espacios_comunes/1.json
  def destroy
    @espacio_comun.destroy
    respond_to do |format|
      format.html { redirect_to espacios_comunes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espacio_comun
      @espacio_comun = EspacioComun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def espacio_comun_params
      params.require(:espacio_comun).permit(:espacio_comun, :descripcion, :reglamento, :precio, :foto, :comunidad_id)
    end
end

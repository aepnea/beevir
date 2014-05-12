class RemuneracionesController < ApplicationController
  before_action :set_remuneracion, only: [:show, :edit, :update, :destroy]

  # GET /remuneraciones
  # GET /remuneraciones.json
  def index
    @remuneraciones = Remuneracion.all
  end

  # GET /remuneraciones/1
  # GET /remuneraciones/1.json
  def show
  end

  # GET /remuneraciones/new
  def new
    @remuneracion = Remuneracion.new
  end

  # GET /remuneraciones/1/edit
  def edit
  end

  # POST /remuneraciones
  # POST /remuneraciones.json
  def create
    @remuneracion = Remuneracion.new(remuneracion_params)

    respond_to do |format|
      if @remuneracion.save
        format.html { redirect_to @remuneracion, notice: 'Remuneracion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @remuneracion }
      else
        format.html { render action: 'new' }
        format.json { render json: @remuneracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remuneraciones/1
  # PATCH/PUT /remuneraciones/1.json
  def update
    respond_to do |format|
      if @remuneracion.update(remuneracion_params)
        format.html { redirect_to @remuneracion, notice: 'Remuneracion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @remuneracion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remuneraciones/1
  # DELETE /remuneraciones/1.json
  def destroy
    @remuneracion.destroy
    respond_to do |format|
      format.html { redirect_to remuneraciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remuneracion
      @remuneracion = Remuneracion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remuneracion_params
      params.require(:remuneracion).permit(:empleado_id, :fecha, :comunidad_id)
    end
end

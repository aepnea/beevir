class UnidadesController < ApplicationController
 load_and_authorize_resource
  before_action :set_unidad, only: [:show, :edit, :update, :destroy]
  skip_load_resource :only => [:create]
  layout 'header'


  # GET /unidades
  # GET /unidades.json
  def index
    if session[:comunidad_id] == nil
       raise "Invalid URL"
    else
  	   cliente = current_user.cliente_id
       comunidad = session[:comunidad_id]
       current_comunidad = Comunidad.where("comunidades.cliente_id = '#{cliente}' and comunidades.id = '#{comunidad}'")
       current_comunidad.each do |com|
           if cliente == com.cliente_id
             @unidades = Unidad.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{com.id}'").references(:comunidad)
           else
             raise "Invalid URL"  
           end
       end
    end   
  end

  # GET /unidades/1
  # GET /unidades/1.json
  def show
  end

  # GET /unidades/new
  def new
    @unidad = Unidad.new
    comunidad = session[:comunidad_id]
    cliente = current_user.cliente_id
    @sector = Sector.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{comunidad}'").references(:comunidad)
  end

  # GET /unidades/1/edit
  def edit
    cliente = current_user.cliente_id
    comunidad = session[:comunidad_id]
    @sector = Sector.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{comunidad}'").references(:comunidad)    
  end

  # POST /unidades
  # POST /unidades.json
  def create
    @unidad = Unidad.new(unidad_params)

    respond_to do |format|
      if @unidad.save
        format.html { redirect_to @unidad, notice: 'Unidad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unidad }
      else
        format.html { render action: 'new' }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidades/1
  # PATCH/PUT /unidades/1.json
  def update
    respond_to do |format|
      if @unidad.update(unidad_params)
        format.html { redirect_to @unidad, notice: 'Unidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    @unidad.destroy
    respond_to do |format|
      format.html { redirect_to unidades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad
      @unidad = Unidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_params
      params.require(:unidad).permit(:numero, :mt2, :busy, :sector_id, :comunidad_id)
    end
end

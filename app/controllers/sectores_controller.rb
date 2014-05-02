class SectoresController < ApplicationController
 load_and_authorize_resource
  before_action :set_sector, only: [:show, :edit, :update, :destroy]
  skip_load_resource :only => [:create]


  # GET /sectores
  # GET /sectores.json
  def index
    if session[:comunidad_id] == nil
      raise "Invalid Url"
    else
### esto puede ser un helper
      comunidad = session[:comunidad_id]
      cliente = current_user.cliente_id
      current_comunidad = Comunidad.where("comunidades.cliente_id = '#{cliente}' and comunidades.id = '#{comunidad}'")
### hasta aca      
      current_comunidad.each do |com|
        if cliente == com.cliente_id
          @sectores = Sector.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{com.id}'").references(:comunidad)
        else
          raise "InvalidUserAccess"
        end
      end
    end  
  end

  # GET /sectores/1
  # GET /sectores/1.json
  def show

  end

  # GET /sectores/new
  def new
    @comunidad = session[:comunidad_id]
    @sector = Sector.new
    cliente = current_user.cliente_id
  end

  # GET /sectores/1/edit
  def edit
    #@comunidad = session[:comunidad_id]
  end

  # POST /sectores
  # POST /sectores.json
  def create
    @sector = Sector.new(sector_params)

    respond_to do |format|
      if @sector.save
        format.html { redirect_to @sector, notice: 'Sector creado satisfactoriamente.' }
        format.json { render action: 'show', status: :created, location: @sector }
      else
        format.html { render action: 'new' }
        format.json { render json: @sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectores/1
  # PATCH/PUT /sectores/1.json
  def update
    respond_to do |format|
      if @sector.update(sector_params)
        format.html { redirect_to @sector, notice: 'Sector was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectores/1
  # DELETE /sectores/1.json
  def destroy
    @sector.destroy
    respond_to do |format|
      format.html { redirect_to sectores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector
      @sector = Sector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_params
      params.require(:sector).permit(:nombre, :comunidad_id)
    end
end

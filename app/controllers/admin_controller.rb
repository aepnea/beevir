class AdminController < ApplicationController
	load_and_authorize_resource
	layout 'header'


  def index
 	cliente = current_user.cliente_id
 	@comunidades = Comunidad.where(cliente_id: cliente)
  end
 
  def panel
  	@comunidad = params[:comunidad_id]
    @x = session[:comunidad_id] = @comunidad ###Variable de session
  	@comunidad_nombre = Comunidad.select("nombre").where(id: @x)
  end
 
 end

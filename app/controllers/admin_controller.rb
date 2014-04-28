class AdminController < ApplicationController
	load_and_authorize_resource
 
  def index
 	cliente = current_user.cliente_id
 	@comunidades = Comunidad.where(cliente_id: cliente)
  end
 
  def panel
  	@comunidad = params[:comunidad_id]

  	@comunidad_nombre = Comunidad.where(id: @comunidad)
  end
 
  def sector()
  	cliente = current_user.cliente_id  	
	  @com = params[:comunidad_id]
  	current_comunidad = Comunidad.where(cliente_id: cliente)
  	current_comunidad.each do |com|
		if cliente ==  com.cliente_id
			@sectores = Sector.all.includes(:comunidad).where("comunidades.cliente_id = '#{cliente}' and comunidades.id ='#{com.id}'").references(:comunidad)
		else
			raise InvalidUserAccess, '¡No, no, no!'
		end
	end
  end
end

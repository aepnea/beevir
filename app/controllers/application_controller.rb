class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def after_sign_in_path_for(resource_or_scope)
  	if current_user.has_role? :admin
        "/admin/index"        
    elsif current_user.has_role? :copropietario
         "/comunidad/logout"
    elsif current_user.has_role? :arrendatario
    	  "/comunidad/logout"
    elsif current_user.has_role? :copropietario_residente
    	  "/comunidad/logout"
    elsif current_user.has_role? :comite
        "/comunidad/logout"
    end
  end
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
  		#flash[:error] = "Acceso Denegado."
  		#redirect_to root_url
  end
end

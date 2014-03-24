class ComunidadController < ApplicationController
  	load_and_authorize_resource :class => Comunidad
  def index
  end
end
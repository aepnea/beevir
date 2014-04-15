class ComunidadUser < ActiveRecord::Base
	belongs_to :user
	belongs_to :comunidad
end

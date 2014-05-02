class Solicitud < ActiveRecord::Base
	belongs_to :unidad
	belongs_to :comunidad
	belongs_to :estado
	belongs_to :role
end

class Remuneracion < ActiveRecord::Base
	belongs_to :comunidad
	belongs_to :empleado

end

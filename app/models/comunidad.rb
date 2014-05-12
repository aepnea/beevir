class Comunidad < ActiveRecord::Base
	belongs_to :tipo_unidad
	belongs_to :region
	belongs_to :user
	belongs_to :cliente
	has_many :remuneraciones
	has_many :empleados
	has_many :solicitudes
	has_many :espacios_comunes
    has_many :unidades
    has_many :sectores
    has_many :comunidades_users
	has_many :users, :through => :comunidades_users, :dependent => :destroy
end

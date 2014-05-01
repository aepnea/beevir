class Unidad < ActiveRecord::Base
	belongs_to :comunidad
    belongs_to :sector
    has_many :users_unidades
    has_many :users, :through => :users_unidades#, :dependent => :destroy

end

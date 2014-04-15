class Sector < ActiveRecord::Base
		has_many :unidades
        belongs_to :comunidad
end

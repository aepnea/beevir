class Cliente < ActiveRecord::Base
	belongs_to :region
	has_many :users
	has_many :comunidades
end

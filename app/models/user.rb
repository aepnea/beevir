class User < ActiveRecord::Base
  rolify
  belongs_to :cliente
  has_many :comunidades_users
  has_many :comunidades, :through => :comunidades_users, :dependent => :destroy
  has_many :users_unidades
  has_many :unidades, :through => :users_unidades
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end

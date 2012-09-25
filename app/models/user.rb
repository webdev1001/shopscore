class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :shop_id

  belongs_to :shop
end

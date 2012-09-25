class Shop < ActiveRecord::Base
  attr_accessible :title, :url
  has_many :users
  has_many :orders
end

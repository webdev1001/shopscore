class Order < ActiveRecord::Base
  attr_accessible :do_not_send_until, :email, :order_number, :remark, :rating, :sent, :shop_id
  acts_as_tenant(:shop)
  belongs_to :shop
end

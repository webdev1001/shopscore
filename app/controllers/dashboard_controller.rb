class DashboardController < ApplicationController
  set_current_tenant_through_filter
  layout 'dashboard'
  
  before_filter :authenticate_user!
  before_filter :set_shop_tenant

  def current_shop
    current_user.shop
  end
  
  def set_shop_tenant
    set_current_tenant(current_shop)
  end

  def index
    @latest_orders = Order.limit(10)
  end
end

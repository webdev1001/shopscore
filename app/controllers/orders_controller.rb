class OrdersController < ApplicationController
  before_filter :reset_tenant

  def reset_tenant
    ActsAsTenant.current_tenant = nil
  end

  def rate
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(params[:order])
      flash[:success] = "Bedankt voor uw beoordeling"
      redirect_to "http://" + @order.shop.url
    end
  end
end

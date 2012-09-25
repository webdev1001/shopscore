class OrdersController < DashboardController
  before_filter :reset_tenant, :only => [:rate, :update]
  before_filter :authenticate_user!, :except => [:rate, :update]
  layout 'application', :only => :rate

  def reset_tenant
    ActsAsTenant.current_tenant = nil
  end

  def rate
    @order = Order.find_by_order_hash(params[:order_hash])
  end


  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])

    if @order.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(params[:order])
      redirect_to root_url
    end
  end
end

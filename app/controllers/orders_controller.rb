class OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(params[:order])
    if @menu.save
      redirect_to order_path_new()
    else
      render :action => :new
    end
  end
end

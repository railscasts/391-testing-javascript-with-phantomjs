class OrdersController < ApplicationController
  def index
    @orders = Order.page(params[:page]).per_page(10)
  end

  def new
    @order = Order.new(amount: 19.99)
  end

  def create
    @order = Order.new(params[:order])
    @order.purchase
    redirect_to orders_url, notice: "Order created."
  end
end

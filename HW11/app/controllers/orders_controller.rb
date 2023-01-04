class OrdersController < ApplicationController
  def create
    order = current_user.orders.create(cart: current_cart, status: "Not Paid")
    cookies.delete(:cart_id)

    redirect_to order_path(order), notice: "Order was created"
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def index
    @orders = current_user.orders.all
  end
end

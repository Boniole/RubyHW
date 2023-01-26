class OrdersController < ApplicationController
  def create
    order = current_user.orders.create(cart: current_cart, status: 0)
    cookies.delete(:cart_id)

    redirect_to order_path(order), notice: "Order was created"
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def index
    @orders = current_user.orders.all
  end

  def pay
    order = current_user.orders.find(params[:id])
    order.status = 1
    order.save
    UserMailer.send_order(current_user, order).deliver_now
    redirect_to order_path(order), notice: "Order was paid"
  end
end

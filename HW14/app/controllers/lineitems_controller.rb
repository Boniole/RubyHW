class LineitemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    current_cart.add_product(product)

    redirect_to cart_path, notice: "#{product.name} was added to the Cart"
  end

  def destroy
    lineitem = Lineitem.find(params[:id])
    lineitem.destroy

    redirect_to cart_path, notice: "Product was deleted from the Cart"
  end

  def add_quantity
    lineitem = Lineitem.find(params[:id])
    lineitem.quantity += 1
    lineitem.save
    redirect_to cart_path
  end

  def reduce_quantity
    lineitem = Lineitem.find(params[:id])
    if lineitem.quantity > 1
      lineitem.quantity -= 1
    end
    lineitem.save
    redirect_to cart_path
  end
end

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
end

class ProductsController < ApplicationController
  def initialize
    super
  end

  def index
    @products = Product.all
    @products = Category.find(params[:category_id]).products if params[:category_id].present?
  end

  def show
    @product = Product.find(params[:id])
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end

end

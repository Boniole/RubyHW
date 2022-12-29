class ProductsController < InheritedResources::Base
  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end

end

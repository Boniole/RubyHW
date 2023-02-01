class CategoriesController < ApplicationController
  def initialize
    super
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def index
  end

  private

    def category_params
      params.permit(:title)
    end

end

class CategoriesController < ApplicationController
  def initialize
    super
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
    @categories = Category.all
  end

  def index
    @categories = Category.all
  end

  private

    def category_params
      params.permit(:title)
    end

end

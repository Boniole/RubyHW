class CategoriesController < InheritedResources::Base

  def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  private

    def category_params
      params.permit(:title)
    end

end

class Api::V1::AuthorsController < ApplicationController
  before_action :set_author, only: %i[show, update, destroy]

  def index
    render json: Author.all
  end

  def show
    @author = Author.find(params[:id])
    render json: @author
  end

  def create
    @author = Author.create(person_params)
    render json: @author
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    render json: @author
  end

  def destroy
    render plain: 'Deleted' if @author.destroy
  end

  private

  # def set_author
  #   @author = Author.find(params[:id])
  # end

  def person_params
    params.require(:author).permit(:name)
  end

  def author_params
    params.permit(:name)
  end

end

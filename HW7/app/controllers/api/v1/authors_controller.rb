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
    @author = Author.create(author_params)
    render json: @author
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    render json: @author
  end

  def destroy
    if @author.destroy
      render status: :no_content
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name)
  end

end

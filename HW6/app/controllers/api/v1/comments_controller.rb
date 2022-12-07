UNPUBLISHED = 0
PUBLISHED = 1

class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: %i[show update destroy]
  before_action :set_author, only: %i[index create]
  before_action :set_article, only: %i[create]

  def index
    @comments = @author.comments
    @comments = @author.comments.where(status: person_params[:status]) if person_params[:status].present?

    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = @article.comments.new(person_params)
    if @comment.valid?
      @comment.save
      render json: @comment
    else
      render status: :unprocessable_entity
    end
  end

  def update
    if [UNPUBLISHED, PUBLISHED].include?(person_params[:status])
      render status: :ok if @comment.update(status: person_params[:status])
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    render status: :ok if @comment.destroy
  end

  private

  def set_article
    if person_params[:article_id].is_a?(Integer)
      @article = Article.find(person_params[:article_id])
    else
      render status: :not_found
    end
  end

  def set_comment
    set_author
    begin
      @comment = @author.comments.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      render status: :not_found
    end
  end

  def set_author
    @author = Author.find(params[:author_id])
  end

  def person_params
    params.require(:authors).require(:comments).permit(:body, :status, :article_id)
  end
end

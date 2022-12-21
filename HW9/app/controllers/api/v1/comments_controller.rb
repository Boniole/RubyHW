class Api::V1::CommentsController < ApplicationController
  before_action :set_author, only: %i[create show update destroy]
  before_action :set_article, only: %i[create update]
  before_action :set_comment, only: %i[show update destroy]

  def index
    @comments = @author.comments
    # debugger
    @comments = @author.comments.where(status: params[:status]) if comment_params[:status].blank?

    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    comment = @author.comments.create(comment_params)
    if comment.valid?
      render json: comment
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @comment.destroy
      render status: :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private

  def set_article
    if comment_params[:article_id].is_a?(Integer)
      @article = Article.find(comment_params[:article_id])
    else
      render status: :not_found
    end
  end

  def set_comment
    @comment = @author.comments.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: {}, status: :not_found
  end

  def set_author
    @author = Author.find(params[:author_id])
  end

  def comment_params
    params.require(:authors).require(:comments).permit(:body, :status, :article_id)
  end
end

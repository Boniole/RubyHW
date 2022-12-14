class Api::V1::ArticlesController < ApplicationController
  Pagy::DEFAULT[:items] = 15

  include Pagy::Backend

  before_action :set_author, only: %i[index create]
  before_action :set_article, only: %i[show update destroy]

  # GET /articles
  def index
    articles = if params[:search].blank?
                 Article.all
               else
                 Article.where('title LIKE ? OR body LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
               end
    articles = articles.where(status: params[:status]) if params[:status]
    articles = articles.joins(:author).where("authors.name LIKE ?", "%#{params[:author]}%") if params[:author]
    articles = articles.joins(:tags).where("tags.name IN (?)", params[:tags].split(',')) if params[:tags]
    render json: (articles.order("title #{params[:order]}"))
  end

  # GET /articles/1
  def show
    render json: @article
  end

  # POST /articles
  def create
    @article = @author.articles.new(article_params)

    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    if @article.destroy
      render status: :no_content
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def articles_search
    debugger
    article = Article.where('title LIKE ? OR body LIKE ?', "%#{params[:word]}%", "%#{params[:word]}%")
    if article.blank?
      render json: {}, status: :ok
    else
      render json: article, status: :ok
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.permit(:title, :body)
  end

  def set_author
    @author = Author.find(params[:author_id])
  end
end

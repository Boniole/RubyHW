module Api
  module V1
    class LikesController < ApplicationController
      before_action :set_article, only: %i[index create destroy]
      before_action :set_comment, only: %i[index create destroy]
      before_action :set_likes, only: %i[destroy]

      def index
        render json: where_is_like.likes.all, status: :ok
      end

      def create
        @like = where_is_like.likes.create(like_params)
        render json: @like, status: :ok
      end

      def destroy
        if @like.destroy
          render status: :no_content
        else
          render json: @like.errors, status: :unprocessable_entity
        end
      end

      private

      def set_comment
        @comment = Comment.find_by(like_params[:comment_id])
      end

      def set_article
        @article = Article.find_by(like_params[:article_id])
      end

      def where_is_like
        @article.present? ? @article : @comment
      end

      def set_likes
        @like = where_is_like.likes.find(params[:id])
      end

      def like_params
        params.permit(:author_id, :article_id, :comment_id)
      end
    end
  end
end
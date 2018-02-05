class CommentsController < ApplicationController

  before_action :set_comments, only: [:show]

  def create
    @article =  Article.find(params[:article_id])
    @comment = @article.comments.new(comment_attribute)
    if @comment.save
      redirect_to article_path(params[:article_id])
    else
      render 'comments'
    end
  end

  private

    def comment_attribute
      params.require('comment').permit(:user, :body)
    end

end

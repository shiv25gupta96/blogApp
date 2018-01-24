class ArticlesController < ApplicationController

  def new
  end

  def create
    @article = Article.new article_attributes
    if @article.save
      redirect_to @article
    else
      render 'new'
  end

  private
    def article_attributes
      params.require(:article).permit(:title, :text)
    end
end

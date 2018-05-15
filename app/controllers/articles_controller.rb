class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy, :show]

  def index
    @articles = Article.all
  end

  def edit
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params_article)
    redirect_to articles_path
  end

  def update
    @article.update(params_article)
    redirect_to articles_path
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def params_article
    params.require(:article).permit(:title, :content)
  end
end

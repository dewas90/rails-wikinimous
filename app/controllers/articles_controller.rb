class ArticlesController < ApplicationController
  before_action :set_article , only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    # before action
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save
    redirect_to articles_path(article)
  end

  def edit
    # before action
  end

  def update
    # before action
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    # before action
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end


end

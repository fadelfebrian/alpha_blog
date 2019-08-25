# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article, only: %i[edit show update destroy]

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # debugger
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = 'Create article success'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @article.update(article_params)
      flash[:success] = 'Succesfully updated'
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      flash[:danger] = 'Deleted Succesfully'
      redirect_to articles_path
    end
  end

  def tes; end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end

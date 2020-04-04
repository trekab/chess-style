class ArticlesController < ApplicationController
  def index
  	@featured_article = Article.featured_article
  	@categories = Category.all.order(:priority).reverse_order
  end

  def new
  	@article = Article.new
  end
end
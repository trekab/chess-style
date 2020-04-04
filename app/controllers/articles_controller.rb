class ArticlesController < ApplicationController
  def index
  	@featured_article = Article.featured_article
  end
end
class ArticlesController < ApplicationController
  def index
  	@featured_article = Article.featured_article
  	@categories = Category.all.order(:priority).reverse_order
  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user
    if @article.save
      flash[:success] = "Article was created successfully"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  
  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end

  def require_same_user
    if current_user != @article.user && !current_user.admin?
      flash[:danger] = "You can only edit or delete your own article"
      redirect_to root_path
    end
  end
end
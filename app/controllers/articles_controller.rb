class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]
  before_action :require_user, except: [:index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

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
      flash[:success] = 'Article was created successfully'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to root_path
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :text, :image, category_ids: [])
    end

    def require_same_user
      if current_user != @article.author && !current_user.admin?
        flash[:danger] = 'You can only edit or delete your own article'
        redirect_to root_path
      end
    end
end

class CategoriesController < ApplicationController
  before_action :require_admin_user

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'Category was created successfully'
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = 'Category was successfully updated'
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:danger] = 'Category was successfully deleted'
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end

  def require_admin_user
    return if logged_in? && current_user.admin?

    flash[:danger] = 'You need admin access to perform that action'
    redirect_to root_path
  end
end

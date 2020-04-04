class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You have successfully created your account"
      redirect_to pages_home_path
    else
      flash.now[:danger] = "There was something wrong with your sign up information"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end

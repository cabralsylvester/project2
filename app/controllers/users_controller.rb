class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @biometrics = Biometric.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    # @user = User.new
    # @user = User.all.sample #Can delete if add user is not working
    # @user.save
    redirect_to users_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
private
  def user_params
    params.require(:user).permit(:name, :height, :weight)
  end
end

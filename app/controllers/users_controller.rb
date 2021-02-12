class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :show
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :firstname, :lastname, :bio, :socialmedia, :password, :password_confirmation)
  end
end
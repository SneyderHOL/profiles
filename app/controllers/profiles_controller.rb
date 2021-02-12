class ProfilesController < ApplicationController
  def new
    @user = User.new
  end

  def list
    @users = User.all
  end

  def create
    @user = User.new(user_param)
    if @user.save
      redirect_to list_path
    else
      render :new
    end
  end

  private
  def user_param
    params.require(:user).permit(:email, :username, :firstname, :lastname, :bio, :socialmedia, :password, :password_confirmation)
  end
end
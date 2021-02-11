class ProfilesController < ApplicationController
  def new
    @user = User.new
  end

  def list
  end

  def create
    @user = User.new(user_param)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_param
    params.require(:user).permit(:email, :username, :firstname, :lastname, :password, :password_confirmation)
  end
end
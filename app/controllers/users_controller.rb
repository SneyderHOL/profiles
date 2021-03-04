class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:edit, :update]

  def show
    @user = User.find_by(username: params[:username])
    unless @user
      flash[:alert] = "No profile for that Username or it's a private profile"
      redirect_to root_path
    end
  end
end
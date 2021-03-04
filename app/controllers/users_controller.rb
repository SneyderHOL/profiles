class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:edit, :update]

  def index
  end

  def new
  end

  def show
    @user = User.find_by(username: params[:username])
    unless @user
      flash[:alert] = "No profile for that Username or it's a private profile"
      redirect_to root_path
    end
  end
  
  def create
  end

  def edit
    @user = current_user
    @user.socials.build
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path
    else
      render :show
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user)
          .permit(:name,
                  :description, 
                  :image,
                  socials_attributes: [:id, :name, :link])
  end
end
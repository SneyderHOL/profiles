class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.socials.build
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

=begin
    if params[:add_social]
      @user.socials.build
    elsif params[remove_social]
      #
    else
      if @user.save
        redirect_to users_path
      end
    end
    render :new
=end
  end

  def edit
    @user = User.find(params[:id])
    @user.socials.build
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :show
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
  def user_params
    params.require(:user)
          .permit(:email,
                  :username,
                  :firstname,
                  :lastname,
                  :bio, 
                  :password,
                  :password_confirmation,
                  socials_attributes: [:id, :name, :link])
  end
end
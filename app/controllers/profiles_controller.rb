class ProfilesController < ApplicationController
  def new
    @user = User.new
  end

  def list
  end
end
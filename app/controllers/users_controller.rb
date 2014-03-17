class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      log_in!(@user)
      render :show
    else
      render :json => @user.errors, :status => :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
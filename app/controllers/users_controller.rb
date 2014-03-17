class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])

    if @user.save
      self.current_user = @user
      redirect_to :root
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end

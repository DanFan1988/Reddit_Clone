class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user])
    if @user
      log_in!(@user)
      render :json => @user.id
    else
      render :json => "Invalid credentials",
        :status => :unprocessable_entity
    end
  end

  def destroy
    current_user && log_out!(current_user)
    head :ok
  end

  def show
    @user = current_user || default_user

    @subscriptions = []
    @user.subscribed_subs.each do |sub|
      @subscriptions << [sub.slug, sub.title.upcase]
    end
  end
end

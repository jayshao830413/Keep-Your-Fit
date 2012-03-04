class SessionsController < ApplicationController
  respond_to :json
  
  def create
    user = User.authenticate(params[:email],params[:password])
    if user
      session[:user_id] = user.user_id
      redirect_to root_url, :notice => "Logged in!"
    else
      render "new"
    end
  end

  def new

  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out"
  end
end

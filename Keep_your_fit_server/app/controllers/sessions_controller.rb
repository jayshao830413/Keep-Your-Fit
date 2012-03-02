class SessionsController < ApplicationController
  respond_to :json
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Loggin in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def index

  end

  def register

  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out"
  end
end

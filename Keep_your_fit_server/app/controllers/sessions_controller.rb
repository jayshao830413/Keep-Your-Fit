class SessionsController < ApplicationController
  respond_to :json
  
  def create
    user = User.authencitate(params[:email],params[:password])
    if user
      session[:user_id] = user.id
      redirect_to plans_path, :notice => "Logged in!"
    else
      render "new"
    end
  end

  def new

  end

  def destroy
    reset_session
    redirect_to root_url
  end
end

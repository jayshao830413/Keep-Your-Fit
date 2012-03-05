class UsersController < ApplicationController
  respond_to :json
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to plans_path, :notice => "Sign Up!"
    else

  		render "new"
	end
  end

end

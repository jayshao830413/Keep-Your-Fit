class PlansController < ApplicationController
  def index
    if !current_user
      redirect_to root_url
    end

  end

end

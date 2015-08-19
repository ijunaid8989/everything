class SessionsController < ApplicationController

  def index
  end

  def create
  	@user = User.authenticate(params[:email],params[:password])
  	if @user
  		redirect_to "/dashboard"
  	else
  		redirect_to root_url , :notice => "Galat bat"
  	end
  end
end

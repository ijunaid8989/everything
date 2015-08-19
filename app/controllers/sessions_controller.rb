class SessionsController < ApplicationController

  def index
    if current_user
      redirect_to "/dashboard"
    end
  end

  def create

  	@user = User.authenticate(params[:email],params[:password])
  	if @user
  		session[:user_id] = @user.id
  		redirect_to "/dashboard" , :notice => "Chal bei aja andar"
  	else
  		redirect_to root_url , :notice => "Galat bat"
  	end
  end
  def destroy
  	session[:user_id] =nil
  	redirect_to root_url , :notice => "Chal putar logout ho"
  end
end

class UsersController < ApplicationController
  def index
  	@user = User.new
  end
  def create
  	@user = User.new(params_user)
  	if @user.save
  		redirect_to "/newuser"
  	end
  end

private 
def params_user
	params.require(:user).permit(:email,:password)
end
end

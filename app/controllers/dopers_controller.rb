class DopersController < ApplicationController
  def index
  	@doper = Doper.new
  	@levels = Level.all
  end
  def create
  	@doper = Doper.new(doper_params)
  	if @doper.save
  		redirect_to "/addclass"
  	end
  end

private
def doper_params
	params.require(:doper).permit(:name,:level_id)
end
end

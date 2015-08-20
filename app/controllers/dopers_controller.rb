class DopersController < ApplicationController
  def index
  	@doper = Doper.new
  	@levels = Level.all
  end
end

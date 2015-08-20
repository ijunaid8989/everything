class LevelsController < ApplicationController

  def index
  	@level = Level.new
  	@subjects = Subject.new
  end

  def create
  	@levelval = params.require(:level).permit(:name)

	@subjectval = params.require(:subject).permit(:name)[:name]

	@level = Level.new(@levelval)

	@turnsubs = @subjectval.split(",")

	if @level.save

		@levelid = @level.id

		@turnsubs.each do |single|
			Subject.create!(name: single , level_id: @levelid)
		end
		redirect_to "/addlevel"
	end
  end

end

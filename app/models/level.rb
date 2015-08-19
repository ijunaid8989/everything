class Level < ActiveRecord::Base
	has_many :subjects
	validates_presence_of :name , :notice => "Chal gen banda ben"
end

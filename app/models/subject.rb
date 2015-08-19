class Subject < ActiveRecord::Base
	belongs_to :level
	validates_presence_of :name , :notice => "Chal gen banda ben"
end

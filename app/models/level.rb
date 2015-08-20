class Level < ActiveRecord::Base
	has_many :subjects
	has_many :dopers
	validates :name, presence: true
end

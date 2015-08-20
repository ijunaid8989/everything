class Level < ActiveRecord::Base
	has_many :subjects
	validates :name, presence: true
end

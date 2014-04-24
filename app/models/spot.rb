class Spot < ActiveRecord::Base

	belongs_to :user
	belongs_to :parking_space
	belongs_to :renting_type

end
class Price < ActiveRecord::Base

	belongs_to :parking_space
	belongs_to :renting_type

end
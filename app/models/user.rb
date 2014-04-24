class User < ActiveRecord::Base

	has_many :plates
	has_many :parking_spaces
	has_many :spots
	
end
class District < ActiveRecord::Base

	belongs_to :province
	has_many :parking_spaces

end
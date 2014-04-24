class ParkingSpace < ActiveRecord::Base

	belongs_to :user
	belongs_to :district
	belongs_to :parking_type

	has_many :prices
	has_many :renting_types, through: :prices
	has_many :spots

	has_many :extras
	has_many :additional_data, through: :extras

end
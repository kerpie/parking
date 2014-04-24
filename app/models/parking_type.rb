class ParkingType < ActiveRecord::Base

	has_many :parking_spaces

	validates :name, presence: true

end
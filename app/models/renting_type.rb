class RentingType < ActiveRecord::Base

	has_many :prices
	has_many :parking_spaces, through: :prices

	has_many :spots

	validates :name, presence: true
	validates :hours, presence: true

end
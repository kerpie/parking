class AdditionalData < ActiveRecord::Base

	has_many :extras
	has_many :parking_spaces, through: :extras

	validates :name, presence: true	

end
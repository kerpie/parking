class ParkingTypesController < ApplicationController

	before_filter :set_parking_type, only: [:edit, :update, :destroy]

	def index
		@parking_types = ParkingType.all
	end

	def new
		@parking_type = ParkingType.new
	end

	def create
		@parking_type = ParkingType.new(parking_type_params)
		respond_to do |format|
			if @parking_type.save
				format.html { redirect_to parking_types_path }
			else
				format.html { render action: :new}
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @parking_type.update(parking_type_params)
				format.html { redirect_to parking_types_path }
			else
				format.html { render action: :edit}
			end
		end
	end

	def destroy
		@parking_type.destroy
		respond_to do |format|
			format.html { redirect_to parking_types_path }
		end
	end

	protected
		def set_parking_type
			@parking_type = ParkingType.find(params[:id])
		end

		def parking_type_params
			params.require(:parking_type).permit(:name)
		end

end
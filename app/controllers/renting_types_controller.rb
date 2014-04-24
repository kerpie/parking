class RentingTypesController < ApplicationController

	before_filter :set_renting_type, only: [:edit, :update, :destroy]

	def index
		@renting_types = RentingType.all
	end

	def new
		@renting_type = RentingType.new
	end

	def create
		@renting_type = RentingType.new(renting_type_params)
		respond_to do |format|
			if @renting_type.save
				format.html { redirect_to renting_types_path }
			else
				format.html { render action: :new}
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @renting_type.update(renting_type_params)
				format.html { redirect_to renting_types_path }
			else
				format.html { render action: :edit}
			end
		end
	end

	def destroy
		@renting_type.destroy
		respond_to do |format|
			format.html { redirect_to renting_types_path }
		end
	end

	protected
		def set_renting_type
			@renting_type = RentingType.find(params[:id])
		end

		def renting_type_params
			params.require(:renting_type).permit(:name, :hours)
		end

end
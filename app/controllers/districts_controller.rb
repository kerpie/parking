class DistrictsController < ApplicationController

	before_filter :set_district, only: [:edit, :update, :destroy]

	def index
		@districts = District.all
	end

	def new
		@district = District.new
	end

	def create
		@district = District.new(district_params)
		respond_to do |format|
			if @district.save
				format.html { redirect_to districts_path }
			else
				format.html { render action: :new }
			end
		end
	end

	def edit
	end

	def update 
		respond_to do |format|
			if @district.update(district_params)
				format.html {redirect_to districts_path}
			else
				format.html {render action: :edit}
			end
		end
	end

	def destroy
		@district.destroy
		respond_to do |format|
			format.html {redirect_to districts_path}
		end
	end

	protected 
		def set_district
			@district = District.find(params[:id])
		end

		def district_params
			params.require(:district).permit(:name, :province_id)
		end
end
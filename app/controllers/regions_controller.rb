class RegionsController < ApplicationController

	before_filter :set_region, only: [:edit, :update, :destroy]

	def index
		@regions = Region.all
	end

	def new
		@region = Region.new
	end

	def create
		@region = Region.new(region_params)
		respond_to do |format|
			if @region.save
				format.html { redirect_to regions_path }
			else
				format.html { render action: :new }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @region.update(region_params)
				format.html{redirect_to regions_path}
			else
				format.html {render action: :edit}
			end
		end
	end

	def destroy
		@region.destroy
		respond_to do |format|
			format.html {redirect_to regions_path}
		end
	end

	protected
		def set_region
			@region = Region.find(params[:id])
		end

		def region_params
			params.require(:region).permit(:name, :country_id)
		end
end
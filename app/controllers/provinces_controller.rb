class ProvincesController < ApplicationController

	before_filter :set_province, only: [:edit, :update, :destroy]

	def index
		@provinces = Province.all
	end

	def new
		@province = Province.new
	end

	def create
		@province = Province.new(province_params)
		respond_to do |format|
			if @province.save
				format.html { redirect_to provinces_path }
			else
				format.html { render action: :new }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @province.update(province_params)
				respond_to { redirect_to provinces_path }
			else
				respond_to { render action: :edit }
			end
		end
	end

	def destroy
		@province.destroy
		respond_to do |format|
			format.html { redirect_to provinces_path }
		end
	end

	protected
		def set_province
			@province = Province.find(params[:id])
		end

		def province_params
			params.require(:province).permit(:name, :region_id)
		end
end
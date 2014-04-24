class CountriesController < ApplicationController

	before_filter :set_country, only: [:edit, :update, :destroy]

	def index
		@countries = Country.all
	end

	def new
		@country = Country.new
	end

	def create
		@country = Country.new(country_params)
		respond_to do |format|
			if @country.save
				format.html {redirect_to countries_path}
			else
				format.html {redirect_to action: :new}
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @country.update(country_params)
				format.html{redirect_to countries_path}
			else
				format.html {render action: :edit}
			end
		end
	end

	def destroy
		@country.destroy
		respond_to do |format|
			format.html {redirect_to countries_path}
		end
	end

	protected 
		def set_country
			@country = Country.find(params[:id])
		end

		def country_params
			params.require(:country).permit(:name)
		end
end
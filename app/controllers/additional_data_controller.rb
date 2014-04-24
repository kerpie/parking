class AdditionalDataController < ApplicationController

	before_filter :set_additional_data, only: [:edit, :update, :destroy]

	def index
		@additional_data = AdditionalData.all
	end

	def new
		@additional_data = AdditionalData.new
	end

	def create
		@additional_data = AdditionalData.new(additional_data_params)
		respond_to do |format|
			if @additional_data.save
				format.html { redirect_to additional_data_index_path }
			else
				format.html { redirect_to action: :new }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @additional_data.update(additional_data_params)
				format.html { redirect_to additional_data_index_path }
			else
				format.html { render action: :edit }
			end
		end
	end

	def destroy
		@additional_data.destroy
		respond_to do |format|
			format.html { redirect_to additional_data_index_path }
		end
	end

	protected
		def set_additional_data
			@additional_data = AdditionalData.find(params[:id])
		end

		def additional_data_params
			params.require(:additional_data).permit(:name)
		end
end
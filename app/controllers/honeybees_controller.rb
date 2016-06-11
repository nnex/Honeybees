class HoneybeesController < ApplicationController

	def index
		@honeybees = Honeybee.all
		@honeybee = Honeybee.new
	end

	def show
		@honeybee = Honeybee.find(params['id'])
	end

	def create
		@honeybees = Honeybee.all
		@honeybee = Honeybee.new(honeybee_params)
		if @honeybee.save
			redirect_to honeybees_path
		else
			render :index
		end
	end

	private

	def honeybee_params
		params.require(:honeybee).permit(:name, :age, :furry)
	end
end

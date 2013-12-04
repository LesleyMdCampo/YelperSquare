class RestaurantsController < ApplicationController
	def show
		@restaurant = Restuarant.find(params[:id])
	end

	def index
		@restaurants = Restuarant.all
	end

	def new
		@restaurant = Restuarant.new
	end

	def create
		@restaurant = Restuarant.new(restuarant_params)
		@restaurant.save
		redirect_to root_path
	end

	def edit
		@restaurant = Restuarant.find(params[:id])
	end

	def update
		@restaurant = Restuarant.find(params[:id])
		@restaurant.update(restuarant_params)
		redirect_to root_path
	end

	def destroy
		@restaurant = Restuarant.find(params[:id])
		@restaurant.destroy
		redirect_to root_path
	end
	
	private
	def location_params
		params.require( ).permit()
	end
end
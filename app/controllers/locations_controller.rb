class LocationsController < ApplicationController

	def index
	end
	
	def new
		@location = Location.new
	end
	
	def create
		@location = Location.new(params[:location]);

		respond_to do |format|
			if @location.save
				format.html { redirect_to @location, notice: 'Location created.' }
				format.json { render json: @location, status: 'created', location: @location }
			else
				format.html { render action: 'new' }
				format.json { render json: @location.errors, status: :unprocessable_entity }
			end
		end


	end
	
	def show
	
		@location = Location.find(params[:id])
		
		respond_to do |format|
			format.html
			format.json {render json: @location}
		end


	end
	
	def edit
		@location = Location.find(params[:id])
	end
	
	def update
	end
	
	def destroy
		@location = Location.find(params[:id])
		@location.destroy
		
		respond_to do |format|
			format.html {redirect_to locations_url}
			format.json {head :no_content}
		end
	end
end
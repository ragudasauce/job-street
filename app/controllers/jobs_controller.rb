class JobsController < ApplicationController

	def index
		@jobs = Job.all
		
		respond_to do |format|
			format.html
			format.json {render json: @jobs}
		end
	end
	
	
	def show
		#branch for when there are no results - or does that happen in the view?
	end
	
	
	def edit
		
	end
	
	
	def create
	
	end
	
	
	def update
	
	end
	
	
	def destroy
	
	end
	
end
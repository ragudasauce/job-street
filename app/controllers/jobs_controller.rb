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
		@job = Job.find(params[:id])
		
		respond_to do |format|
			format.html
			format.json {render json: @job}
		end
	end
	
	
	def edit
		@job = Job.find(params[:id])
		@user = session[:user_id] ? User.find(session[:user_id]) : nil
		
	end
	
	
	def new 
		@job = Job.new
		
		respond_to do |format|
			format.html
			format.json {render json: @job}
		end

	end
	
	
	def create
		
		@job = Job.new(params[:job])
		
		respond_to do |format|
			if @job.save
				format.html { redirect_to @job, :notice => 'Job created' }
				format.json { render json: @job, status: 'created', location: @job}
			else
				
			
			
			end
		end
		
			
	
	end
	
	
	def update
	
		@job = Job.find(params[:id])
		
		respond_to do |format|

		if @job.update_attributes(params[:job])
			format.html {redirect_to @job, notice: 'Job succussfully edited' }
			format.json {head :no_content}
		else
			format.html {render action: 'edit'}
			format.json {render json: @job.errors, status: :unprocessable_entity}
		end
	end
				
		
		
	
	end
	
	
	def destroy
	
	end
	
end
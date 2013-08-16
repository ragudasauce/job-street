class ResumesController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@resume = Resume.new
	end
	
	def create
		@user = User.find(params[:user_id])
		@resume = @user.resumes.create(params[:resume])
		redirect_to user_path(@user)
		
# 		respond_to do |format|
# 			if @resume.save
# 				format.html {redirect_to @resume, :notice => 'New resume created'}
# 				format.json {render json: @resume, status: 'created', location: @user }
# 			else 
# 				format.html { render action: 'new' }
# 				format.json { render json: @resume.errors, status: :unprocessable_entity }
# 			end
# 		end
	end
	
	
	def show 
	
		@resume = Resume.where('user_id = ? AND id = ?', params[:user_id], params[:id]).first
		@job = Job.where('resume_id = ?', params[:id])
		
		
		respond_to do |format|
			format.html
			format.json {render json: @resume}
		end
	end
	
end
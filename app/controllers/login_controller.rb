class LoginController < ApplicationController
	def index
		@login = User.new
		@user = User.new
	end
	
	def create
		user = User.authenticate(params[:email], params[:password])
		
		if (user)
			session[:user_id] = user.id
			redirect_to root_ur, :notice => 'logged in'
		else 
		
			flash.now.alert = "invalid email or password"
			render "new"
		end
		
	end
end
class LoginController < ApplicationController
	def index
		@login = User.new
		@user = User.new
	end
	
	def create
		# seems wrong but this is the only route I can post to with this controller_class_name
		
		@login = User.where('users_email = :email AND users_password = :password', 
			{email: params[:email], password: params[:password]})
			
			
		respond_to do |format|	
			if (@user.save)
				format.html
			else 
				format.html { render action => "index" }
			end
		end

				
		#debug(@login);
		
	end
end
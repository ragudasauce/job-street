class CompaniesController < ApplicationController

	def index
		@companies = Company.all
		
		respond_to do |format|
			format.html
			format.json {render json: @companies}
		end
	end


	def show
		@company = Company.find(params[:id])
		
		respond_to do |format|
			format.html
			format.json {render json: @company}
		end
	end

	
	def new
		@company = Company.new
		
		respond_to do |format|
			format.html
			format.json {render json: @company}
		end
	end
	
	
	def create
		@company = Company.new(params[:company])
		
		respond_to do |format|
		
			if @company.save
				format.html {redirect_to @company, notice: 'Company was successfully created'}
				format.json {render json: @company, status: :created, location: @company}
			else
				format.html {render action: 'new'}
				format.json {render json: @company.errors, status: :unprocessable_entity}
			end
		end
	end

	
	def edit
		@company = Company.find(params[:id])
	end
	
	
	def update
		@company = Company.find(params[:id])
		
		respond_to do |format|
		
			if @company.update_attributes(params[:company])
				
				format.html {redirect_to @company, notice: 'Company was updated'}
				format.json {head :no_content}
			else 
				format.html {render action: 'new'}
				format.json {render json: @company.errors, status: :unprocessable_entity}
			end
		end
	end
	
	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		
		respond_to do |format|
			format.html {redirect_to companies_url}
			format.json {head :no_content}
		end
	end
end
					
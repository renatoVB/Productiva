class CompaniesController < ApplicationController
	before_action :authenticate_user!
	#Get /companies
	def index
		@companies = Company.all
	end
	#Get /companies/:id
	def show
		@company = Company.find(params[:id])
	end

	#Get /companies
	def new
		@company = Company.new
	end

	def edit
		@company = Company.find(params[:id])
	end

	#POST /companies
	def create
		@company = Company.new(companies_params)
		if @company.save
			redirect_to @company
		else
			render :new
		end
	end

	#DELETE /companies/:id
	def destroy
		@company = Company.find(params[:id])
		@company.destroy 
		redirect_to companies_path
	end

	#PUT /companies/:id
	def update
		@company = Company.find(params[:id])
		if @company.update(companies_params)
			redirect_to @company
		else
			render :edit
		end
	end

	private

	def companies_params
		params.require(:company).permit(:name, :category, :rut, :address)
		
	end

	
end
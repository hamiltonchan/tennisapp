class CourtsController < ApplicationController

	def index
		@courts = Court.all
	end

	def new
		@court = Court.new
	end

	def create
		@court = Court.new(court_params)
		if @court.save
			redirect_to action: 'index'
			flash[:notice] = 'You successfully saved new court data!'
		else
			render action: 'new'
		end
	end

	def edit
		@court = Court.find(params[:id])
		render action: 'new'
	end

	def update
		@court = Court.find(params[:id])
		if @court.update(court_params)
			redirect_to action: 'index'
			flash[:notice] = 'You have edited the court information!'
		else
			render action: 'edit'
		end
	end


private

	def court_params
		params.require(:court).permit(:number, :booked)
	end

end

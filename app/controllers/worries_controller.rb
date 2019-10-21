class WorriesController < ApplicationController

	def index
		@worries = Worry.all
		render 'index.html.erb'
	end

	def show
		@worry = Worry.find(params[:id])
	end

	def new
		@worry = Worry.new
	end

	def edit
  		@worry = Worry.find(params[:id])
	end

	def create
		@worry = Worry.new(worry_params)

		if @worry.save
			redirect_to @worry
		else
			render 'new'
		end
	end

	def update
		@worry = Worry.find(params[:id])

		if @worry.update(worry_params)
			redirect_to @worry
		else
			render 'edit'
		end 
	end

	def destroy
		@worry = Worry.find(params[:id])
		@worry.destroy

		redirect_to worry_path
	end

	private
  		def worry_params
    		params.require(:worry).permit(:current_worry, :priority, :reflection)
  		end
end

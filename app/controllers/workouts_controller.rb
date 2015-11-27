class WorkoutsController < ApplicationController

	def index
		@workouts = Workout.all
		x = params[:num_ex].to_i if !params[:num_ex].nil?
		x = 3 if params[:num_ex].nil?
		@generator = Workout.generate(x)
	end

	def show
		@workout = Workout.find(params[:id])
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.new(workout_params)
		if @workout.save
			flash[:notice] = "Your workout has been saved!"
			redirect_to user_path
		else
			flash[:alert] = "There was a problem creating your account. Please try again."
			redirect_to :back
		end
	end

	private

	def workout_params
		params.require(:workout).permit(:name)
	end


end

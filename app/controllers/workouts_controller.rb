class WorkoutsController < ApplicationController

	def index
		@workouts = Workout.all
		x = params[:num_ex].to_i if !params[:num_ex].nil?
		x = 0 if params[:num_ex].nil?
		@generator = Workout.generate(x)
		@ids = []
		@generator.each do |ex|
			@ids.push(ex.id)
		end
	end

	def show
		@workout = Workout.find(params[:id])
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.new(workout_params)
		exs_string = params[:exs]
		ex_id_arr = exs_string.split(' ')
		ex_id_arr.each do |ex|
			x = Exercise.find(ex)
			@workout.exercises <<  x
		end
	end

	private

	def workout_params
		params.require(:workout).permit(:name)
	end


end

class WorkoutsController < ApplicationController

	def index
		@workouts = Workout.all
	end

	def generator
		@x = params[:num_ex].to_i
		@generator = Workout.generate(@x)
		@ids = []
		@generator.each do |ex|
			@ids.push(ex.id)
		end
		@descr = params[:descr]
	end

	def show
		@workout = Workout.find(params[:id])
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.create(workout_params)
		exs_string = params[:exs]
		ex_id_arr = exs_string.split(' ')
		ex_id_arr.each do |ex|
			x = Exercise.find(ex)
			@workout.exercises <<  x
		end
		redirect_to workouts_path
	end

	def edit
		@workout = Workout.find(params[:id])
		unless @workout.user == current_user
			not_user
		end
	end

	def update
		workout = Workout.find(params[:id])
		unless workout.user == current_user
			not_user
		end
		workout.update(workout_params)
		redirect_to workout_path(workout)
	end

	def destroy
		Workout.delete(params[:id])
		redirect_to user_path(session[:user_id])
	end

	private

	def workout_params
		params.require(:workout).permit(:name).merge(user_id: current_user.id)
	end


end

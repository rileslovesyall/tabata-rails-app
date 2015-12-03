class WorkoutsController < ApplicationController

	def index
		@workouts = Workout.all
	end

	def generator
		@x = params[:num_ex].to_i
		if params[:descr].nil? && session[:descr].nil?
			@descr = 'off'
		elsif params[:descr].nil?
			@descr = session[:descr]
		else
			@descr = params[:descr]
			session[:descr] = @descr
		end
		@generator = Workout.generate(@x)
		if @descr.nil?
			@ids = []
			@generator.each do |ex|
				@ids.push(ex.id)
			end
			session[:ids] = @ids
		else
			@ids = session[:ids]
		end
	end

	def show
		@workout = Workout.find(params[:id])
		@workout.exercises.delete(params[:remove])if params[:remove]
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.create(workout_params)
		exs_string = params[:exs]
		ex_id_arr = exs_string[0].split(' ')
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
		exs = params[:workout][:exercise_ids]
		exs.each do |ex|
			if ex.to_i != 0 
				x = Exercise.find(ex.to_i)
				if !workout.exercises.include?(x)
					workout.exercises <<  x 
				end
			end
		end
		redirect_to workout_path(workout)
	end

	def destroy
		Workout.delete(params[:id])
		redirect_to user_path(session[:user_id])
	end

	def completed
		CompletedWorkout.create(workout_id: params[:id], user_id: current_user.id)
		redirect_to user_path(current_user)
	end

	private

	def workout_params
		params.require(:workout).permit(:name, :exercise_ids).merge(user_id: current_user.id)
	end


end

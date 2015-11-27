class ExercisesController < ApplicationController


	def index
		@exercises = Exercise.all
	end

	def show
		@exercise = Exercise.find(params[:id])
	end

	def new
		@exercise = Exercise.new
	end

	def create
		@exercise = Exercise.create(exercise_params)
		@exercise.user = User.find(session[:user_id])
		redirect_to user_path(User.find(session[:user_id]))
	end

	def edit
		@exercise = Exercise.find(params[:id])
		unless @exercise.user == current_user
			not_user
		end
	end

	def update
		exercise = Exercise.find(params[:id])
		unless @exercise.user == current_user
			not_user
		end
		exercise.update(exercise_params)
		redirect_to exercise_path(exercise)
	end

	def destroy
		unless User.find(params[:id]) == current_user
			not_user
		end
		Exercise.delete(params[:id])
		redirect_to exercises_path
	end

	private

	def exercise_params
		params.require(:exercise).permit(:name, :body_focus)
	end


end

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
		
	end

	def destroy
		Exercise.delete(params[:id])
	end

	private

	def exercise_params
		params.require(:exercise).permit(:name, :body_focus)
	end


end

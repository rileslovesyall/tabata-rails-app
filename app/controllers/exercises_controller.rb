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
		@exercise = Exercise.new(exercise_params)
		if @exercise.save
			flash[:notice] = "You made a new exercise!"
			redirect_to exercises_path
		else
			flash[:alert] = "There was a problem creating this exercise. Please try again."
			redirect_to :back
		end
	end

	private

	def exercise_params
		params.require(:exercise).permit(:name, :body_focus)
	end


end

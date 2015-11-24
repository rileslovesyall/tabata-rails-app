class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@favorites = []
		favorite_exercises = FavoriteExercise.where(user_id: '#{params[:@user.id]}')
		favorite_exercises.each do |fav_ex|
			@favorites.push(Exercise.find(fav_ex.exercise_id))
		end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Welcome to the site!"
			redirect_to "/"
		else
			flash[:alert] = "There was a problem creating your account. Please try again."
			redirect_to :back
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

end

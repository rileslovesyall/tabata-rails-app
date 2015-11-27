class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		unless @user == current_user
			not_user
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

	def edit
		@user = User.find(params[:id])
		unless @user == current_user
			not_user
		end
	end

	def update
		user = User.find(params[:id])
		if user == current_user
			user.update(user_params)
		else 
			not_user
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

	def not_user
		flash[:alert] = "You do not have permission to view this page."
		redirect_to "/"
	end

end

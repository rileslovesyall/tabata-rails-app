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
			session[:user_id] = @user.id
			redirect_to user_path(@user)
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
		redirect_to user_path(user)
	end

	private

	def user_params
		params.require(:user).permit(:username, :bio, :password, :password_confirmation)
	end

end

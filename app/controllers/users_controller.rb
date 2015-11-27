class UsersController < ApplicationController
@@c_user_id = session[:user_id]

	def index
		@users = User.all
	end

	def show
		if @@c_user_id == params[:id]
			@user = User.find(params[:id])
		else 
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
		if @@c_user_id == params[:id]
			@user = User.find(params[:id])
		else
			not_user
		end
	end

	def update
		if @@c_user_id == params[:id]
			user = User.find(params[:id])
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

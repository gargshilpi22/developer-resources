class UsersController < ApplicationController

	before_filter :ensure_user, :only => [:show]

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to root_path, notice: "The user is created!"
		else 
			render 'new'
		end
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		if not @user
			redirect_to login_path, error: "please login first"
		end
	end

	def ensure_user
		@loggedinuser = session[:user]
		if !logged_in?
			flash[:error] = "not logged in, please log in"
		end

		if !(@loggedinuser.id != params[:id])
			flash[:error] = "pleae login with the requested id"
		end
	end

end
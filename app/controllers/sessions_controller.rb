class SessionsController < ApplicationController

	def new 

	end

	def create
		user = User.where(username: params[:username]).first
		if user && user.authenticate(params[:password])
			session[:user] = user
			redirect_to root_path, notice: "You are logged in"
		else
			flash[:error] = "Error logging in, Please try again"
			render 'new'
		end
	end

	def destroy
		session[:user] = nil
		redirect_to root_path, notice: "you are logged out"
	end

end
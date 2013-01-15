class UsersController < ApplicationController

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

end
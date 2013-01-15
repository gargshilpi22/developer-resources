class PostsController < ApplicationController

	before_filter :require_login

	def index
  		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(params[:post])
		if (@post.errors.any?) 
			render(new_post_path)
		else
      		redirect_to(posts_path)
      	end
	end


	def require_login

	end

	def logged_in?
		!! current_user
	end

end
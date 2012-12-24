class PostsController < ApplicationController

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


end
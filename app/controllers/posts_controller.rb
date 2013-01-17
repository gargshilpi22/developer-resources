class PostsController < ApplicationController

	before_filter :require_user, :only => [:new, :create, :edit]

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
		@post = Post.new(params[:post])
		@post.user_id = current_user.id
		if (!@post.save) 
			render(new_post_path)
		else
      		redirect_to(posts_path)
      	end
	end

end
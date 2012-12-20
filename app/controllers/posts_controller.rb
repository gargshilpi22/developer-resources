class PostsController < ApplicationController

	def index
  		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comments = Comment.find(@post.id) 
		respond_to do |format|
    		format.html  # show.html.erb
    		format.json  { render :json => @post }
    	end
	end

	def new
		@post = Post.new
	end

	def create
		post = Post.new(params[:post])
		post.save
      	redirect_to(posts_path)
	end

end
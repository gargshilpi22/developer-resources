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
		title = params[:title]
		url = params[:url]
		post = Post.new(title: title, url: url)
		post.save
      	redirect_to(posts_path)
	end

end
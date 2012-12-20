class CommentsController < ApplicationController

	def new 
		@comment = Comment.new
	end

	def create
		post_id = params[:post_id]
		@comment = Comment.new(params[:comment])
		@comment.post_id = params[:post_id]
		@comment.save
		redirect_to post_comments_path
	end

	def index
		@post = Post.find(params[:post_id])
		@comment = Comment.new
		respond_to do |format|
    		format.html  # show.html.erb
    		format.json  { render :json => @post }
    	end
	end
end
class CommentsController < ApplicationController

	def new 
		@comment = Comment.new
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment])
		if @comment.errors.any?
			render 'posts/show'
		else
			redirect_to post_path(@post)	
		end
	end

end
class CommentsController < ApplicationController

	before_filter :require_user, :only => [:create. :new, :edit]

	def new 
		@comment = Comment.new
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(params[:comment])
		@comment.user_id = current_user
		if @comment.save
			render 'posts/show'
		else
			redirect_to post_path(@post)	
		end
	end

end
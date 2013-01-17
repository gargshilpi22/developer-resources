class VotesController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		vote = post.votes.new(direction: params[:direction])
		vote.user_id = current_user.id
		if !vote.save
			flash[:error] = "Error voting"
		else
			redirect_to posts_path
		end
	end

end
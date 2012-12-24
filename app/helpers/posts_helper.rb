module PostsHelper

	def display_title_url(post)
		if post.url.starts_with?("http://")
			return link_to post.title, post.url
		else
			return link_to post.title, "http://" + post.url
		end
	end
end
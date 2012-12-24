class RemoveVotesToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :votes
  end
end
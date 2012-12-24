class Post < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments
  has_many :votes


  def vote_number
  	votes.where(:direction => 'up').count - votes.where(:direction => 'down').count
  end

end
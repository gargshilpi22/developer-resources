class Post < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments
  has_many :votes
  belongs_to :user

  validates :title, presence: true
  validates :url, presence:true

  def vote_number
  	votes.where(:direction => 'up').count - votes.where(:direction => 'down').count
  end

end
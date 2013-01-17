class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password, :twitter
  has_secure_password

  has_many :posts
  has_many :comments
  has_many :votes
end
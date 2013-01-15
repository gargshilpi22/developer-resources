class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password
  has_secure_password

  has_many :posts
  has_many :comments
end
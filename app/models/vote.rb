class Vote < ActiveRecord::Base
  attr_accessible :post_id, :direction

  belongs_to :post
  belongs_to :user
end
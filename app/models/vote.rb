class Vote < ActiveRecord::Base
  attr_accessible :direction, :post_id, :user_id
  validates :direction, :post_id, :user_id

  belongs_to :post
end

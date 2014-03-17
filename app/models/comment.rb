class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :parent_comment_id, :post_id

  validates :author_id, :post_id, :body, :presence => true

  belongs_to :author, :class_name => "User", :foreign_key => :author_id
  belongs_to :post
end

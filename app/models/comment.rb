class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :parent_comment_id, :post_id
end

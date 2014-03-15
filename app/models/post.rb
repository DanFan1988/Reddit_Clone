class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :sub_id, :title, :url
end

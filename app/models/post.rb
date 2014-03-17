class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :sub_id, :title, :url

  validates :title, :sub_id, :author_id, :presence => true

  belongs_to :sub
  belongs_to :author, :class_name => "User", :foreign_key => :author_id

  has_many :comments
  has_many :votes
end

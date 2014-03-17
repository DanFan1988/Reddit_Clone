class Sub < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, :presence => true

  has_many :posts
end

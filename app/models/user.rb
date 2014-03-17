class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :session_token, :username

  validates :username, :presence => true

  has_many :posts, :foreign_key => :author_id
  has_many :votes
  has_many :comments
end

class User < ActiveRecord::Base
  attr_accessible :username, :password
  attr_accessor :password
  
  validates :password_digest, :presence => true
  validates :password, :length => { :minimum => 6, :allow_nil => true }
  validates :session_token, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true

  before_validation :set_session_token, :on => :create

  def self.find_by_credentials(user_params)
    user = User.find_by_username(user_params[:username])
    if user && user.is_password?(user_params[:password])
      user
    else
      nil
    end
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
  end

  private
  def set_session_token
    self.session_token ||= self.class.generate_session_token
  end
end
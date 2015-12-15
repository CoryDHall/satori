class User < ActiveRecord::Base
  include Findable
  has_many :lists
  has_many :items
  validate :username_must_be_unique
  validates :username, :password, presence: true

  attr_passthrough :username, :password_digest, :session_token

  after_create :ensure_session_token

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def password
    @password = "********" if self.persisted?
    @password
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token || self.reset_session_token
  end

  def reset_session_token
    self.session_token ||= ""
    self.session_token.replace SecureRandom::urlsafe_base64
  end

  def clear_session_token
    self.session_token.clear
  end

  def self.find_by_username_password(username, password)
    p username
    user = find_by(username: username)
    user && user.is_password?(password) ? user : nil
  end

  private

  def username_must_be_unique
    user = User.find_by(username: self.username)
    if user && user.id != self.id
      errors.add :username, "is already taken"
    end
  end
end

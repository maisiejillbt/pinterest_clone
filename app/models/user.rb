class User < ApplicationRecord

  validates :email, :username, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :age, numericality: { greater_than_or_equal_to: 18 }, on: :create
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, on: :create
  validates :email,
            :age,
            :password_digest,
            :session_token,
            presence: true
            
  attr_reader :password

  has_many :pins, 
    dependent: :destroy,
    class_name: :Pin, 
    foreign_key: :user_id 

  has_many :boards, 
    dependent: :destroy,
    class_name: :Board, 
    foreign_key: :user_id

  has_many :followers, 
    class_name: :Follow, 
    foreign_key: :followed_id

  has_many :following, 
    class_name: :Follow, 
    foreign_key: :follower_id

  has_one_attached :photo

  after_initialize :ensure_session_token

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil if user.nil?
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    puts self
    self.session_token = SecureRandom.base64(64)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.base64(64)
  end

end

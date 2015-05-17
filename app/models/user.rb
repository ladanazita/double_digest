class User < ActiveRecord::Base
	has_many :comments
  has_secure_password
  validates :name, uniqueness: {scope: :name}, presence: true
  # VALIDATES EMAIL USING REGEX
  validates :email, uniqueness: {scope: :email, case_sensitive: false},length: {minimum: 6}, presence: true
  validates :password_digest, presence: true

# FACEBOOK LOGIN, OMNIAUTH PARAMS INJECTED INTO OUR DATABASE
  def self.from_omniauth(auth)
     where({:provider => auth ['provider'], :uid => auth ['uid']}).first_or_initialize.tap do |user|
          user.provider = auth['provider']
          user.uid = auth['uid']
          user.name = auth ['info']['name']
          user.oauth_token = auth['credentials']['token']
          user.oauth_expires_at = Time.at(auth['credentials']['expires_at'])
          user.save!
    end
  end

end

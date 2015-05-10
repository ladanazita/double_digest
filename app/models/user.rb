class User < ActiveRecord::Base
	has_many :comments
  validates :name, uniqueness: {scope: :name}, presence: true
  validates :email, uniqueness: {scope: :email}, presence: true
  validates :password_digest, presence: true
  #the omniauth is a method we have to create, and its referring to a class, so its a class method associated with our user. go into user.rb
  #we need to parse what we injected in the omniauth params and inject it into our database
  def self.from_omniauth(auth)
       where({:provider => auth ['provider'], :uid => auth ['uid']}).first_or_initialize.tap do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        user.name = auth ['info']['name']
        user.oauth_token = auth['credentials']['token']
        #error was throwing agains oauth_token_expires
        # user.oauth_token_expires_at = Time.at(auth['credentials']['expires_at'])
        user.save!
      end
  end
end

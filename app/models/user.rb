class User < ActiveRecord::Base
	has_many :comments
  has_secure_password
  validates :name, uniqueness: {scope: :name}, presence: true
  validates :email, uniqueness: {scope: :email}, presence: true
  validates :password_digest, presence: true
end

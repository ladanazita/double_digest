class User < ActiveRecord::Base
	has_many :comments
  has_secure_password
  validates :name, uniqueness: {scope: :name}, presence: true
  validates :email, uniqueness: {scope: :email, case_sensitive: false},length: {minimum: 6}, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, presence: true
  validates :password_digest, presence: true
end

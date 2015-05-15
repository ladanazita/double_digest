class Trend < ActiveRecord::Base
  has_many :videos
  has_many :comments

  validates :hashtags, uniqueness: true
end

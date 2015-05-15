class Trend < ActiveRecord::Base
  has_many :videos

  validates :hashtags, uniqueness: true
end

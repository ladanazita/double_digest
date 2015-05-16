class Trend < ActiveRecord::Base
  has_many :videos
  has_many :comments

  # MAKES SURE ALL HASHTAGS THAT ARE STORED ARE UNIQUE
  validates :hashtags, uniqueness: true

end

class Trend < ActiveRecord::Base
  has_many :videos, :comments
end

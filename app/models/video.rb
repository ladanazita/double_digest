class Video < ActiveRecord::Base
  belongs_to :trend
  validates :trend_id, presence: true
end

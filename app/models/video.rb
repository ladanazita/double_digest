class Video < ActiveRecord::Base
  belongs_to :trend

  # VALIDATES URL UNIQUENESS, AVOID DUPLICATOIN
  validates :url, uniqueness: {scope: :url}, presence: true

end

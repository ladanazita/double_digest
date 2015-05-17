class Comment < ActiveRecord::Base

  belongs_to :trend
  belongs_to :user

  validates :body, presence: true
  validates :user_id, presence: true
  validates :trend_id, presence: true

end

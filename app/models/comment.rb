class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  belongs_to :video
end

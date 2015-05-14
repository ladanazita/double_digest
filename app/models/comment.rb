class Comment < ActiveRecord::Base
  belongs_to :trend
  belongs_to :user
end

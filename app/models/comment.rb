class Comment < ActiveRecord::Base
  belongs_to :trend, :user
end

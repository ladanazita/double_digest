class Video < ActiveRecord::Base
  belongs_to :trend

  # MAKES SURE ALL URL'S THAT ARE STORED ARE UNIQUE
  validates :url, uniqueness: true
 
end

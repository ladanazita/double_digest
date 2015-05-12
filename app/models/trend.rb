class Trend < ActiveRecord::Base
  has_many :videos

  def self.refresh
		tweets = $twitter.home_timeline.take(40)
		@tweets.each do |t|
			t.hashtags.each do |h| 
				h.text

  end
end

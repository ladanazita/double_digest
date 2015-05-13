class Trend < ActiveRecord::Base
  has_many :videos

  def self.refresh
		tweets = $twitter.home_timeline
		if tweets.created_at < 10.minutes.ago 
		@tweets.each do |t|
			t.hashtags.each do |h| 
			Trend.create(hashtags: h.text, created_at: Time.now)

  end
end

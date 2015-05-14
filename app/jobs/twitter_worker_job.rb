class TwitterWorkerJob < ActiveJob::Base
  queue_as :default
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  include ApplicationHelper

  recurrence { hourly(4) }

  def perform
    tweets = load_tweets
    tweets.each do |t|
      t.hashtags.each do |h| 
        Trend.create(hashtags: h.text, created_at: Time.now)
      end
    end
  end 
end

class TwitterWorkerJob < ActiveJob::Base
  queue_as :default
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  include ApplicationHelper

  # SETS UP THE TIME INTERVAL FOR SIDEKIQ + SIDETIQ
  recurrence { hourly(2) }

  # MY PERFORM ACTION FOR SAVING DATA FROM TWTIITERS API TO OUR DB
  def perform
    tweets = load_tweets
    tweets.each do |t|
      t.hashtags.each do |h| 
          Trend.create(hashtags: h.text, created_at: Time.now)
      end
    end
  end 
end

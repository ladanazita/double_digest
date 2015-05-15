require 'Faker'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :trend do |f|
    f.hashtags {Faker::Hacker.noun}
    factory :trend_with_comments do |f|
      transient do
        comments_count 5
      end
      after(:create) do |trend,evaluator|
        create_list(:comment, evaluator.comments_count, trend: trend)
      end
    end
  end
end
require 'Faker'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :video do |f|
    f.url {Faker::Internet.url}
    t.trend_id {Faker::Number.number}
  end
end

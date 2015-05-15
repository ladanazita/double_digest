require 'Faker'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :trend do |f|
    f.hashtags {Faker::Hacker.noun}
  end
end
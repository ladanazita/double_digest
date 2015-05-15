require 'Faker'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :comment do |f|
    f.body {Faker::Lorem.paragraph}
    f.trend_id{1}
  end
  factory :invalid_comment, parent: :comment do |f|
    f.body nil
  end
end
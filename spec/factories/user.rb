require 'Faker'
require 'factory_girl_rails'

FactoryGirl.define do

  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password_digest {Faker::Internet.password}
  end

  factory :invalid_user, parent: :user do |f|
    f.name nil
  end

end


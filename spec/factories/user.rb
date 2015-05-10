#spec/factories/users.rb
require 'faker'
require 'rails_helper.rb'
FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
  end
end


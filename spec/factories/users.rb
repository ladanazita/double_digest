#spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Email.email}
    f.password {Faker::Password.password}
  end
end
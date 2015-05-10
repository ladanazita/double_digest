#spec/factories/users.rb

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
  end
end


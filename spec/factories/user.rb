#spec/factories/users.rb

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password_digest {Faker::Internet.password}
  end
end


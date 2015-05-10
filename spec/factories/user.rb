#spec/factories/users.rb

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
  end
end


require 'rails_helper'
require 'spec_helper'

RSpec.feature "UserSignsUpForAccounts", type: :feature do
  scenario 'User can register' do
    visit '/'
    click_on 'Sign Up'
    fill_in('name',:with =>Faker::Name.name)
    fill_in('email',:with =>Faker::Internet.email)
    fill_in('password',:with=>Faker::Internet.password)
    click_button('Submit')
    expect(page).to have_content 'Welcome #{@user}'
  end
end

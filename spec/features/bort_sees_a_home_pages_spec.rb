require 'rails_helper'

RSpec.feature "BortSeesAHomePages", type: :feature do
  scenario "he sees a signup button" do
    visit '/'
    expect(page).to have_css("li")
    expect(page).to have_content("Sign Up")
  end
end

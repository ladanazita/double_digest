require 'rails_helper'

RSpec.feature "BortSeesAHomePages", type: :feature do
  scenario "he sees a login button" do
    visit '/'
    expect(page).to have_css("li")
    expect(page).to have_content("Sign In")
  end
end

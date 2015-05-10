require 'rails_helper'

RSpec.feature "BortSeesAHomePages", type: :feature do
  scenario "he sees a login button" do
    visit '/'
    expect(page).to have_css("h1")
    expect(page).to have_content("sign in")
  end
end

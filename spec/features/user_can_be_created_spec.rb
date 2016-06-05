require 'rails_helper'

RSpec.feature "create user", type: :feature do
  scenario "a user can be created" do
    visit new_user_path
    fill_in "Username", with: "npisciotta"
    fill_in "Password", with: "password"
    click_on "Create Account"

    expect(page).to have_content("Welcome, npisciotta!")
  end
end

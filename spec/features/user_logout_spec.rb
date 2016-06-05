require 'rails_helper'

RSpec.feature "user can logout", type: :feature do
  scenario "registered user can logout" do
    user = User.create(username: "npisciotta", password: "password")

    visit login_path

    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_on "Login"

    click_on "Logout"

    expect(page).to_not have_content("Welcome, npisciotta!")
  end
end

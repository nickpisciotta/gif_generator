require 'rails_helper'

RSpec.feature "user can login", type: :feature do
  scenario "registered user can login" do
     user = User.create(username: "npisciotta", password: "password")

     visit login_path
     fill_in "Username", with: user.username
     fill_in "Password", with: "password"
     click_button "Login"

     expect(page).to have_content("Welcome, npisciotta!")

   end
 end

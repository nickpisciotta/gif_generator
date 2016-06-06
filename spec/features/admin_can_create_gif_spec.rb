require 'rails_helper'

RSpec.feature "admin creates gif", type: :feature do
  scenario "admin can specify a gif category to create one" do
    admin_creator

    visit admin_categories_path
    click_on "New Gif"
    fill_in "Name", with: "puppies"
    click_button "Create Gif"

    visit gifs_path

    expect(page).to have_css("img")
    expect(page).to have_content("Puppies")
  end
end

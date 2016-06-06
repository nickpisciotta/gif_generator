require 'rails_helper'

RSpec.feature "category creation", type: :feature do
  scenario "logged in admin can create category" do
    admin_creator

    visit admin_categories_path
    expect(page).to have_content("All Categories")

    click_on "New Category"

    fill_in "Name", with: "Humor"

    click_on "Create Category"

    expect(page).to have_content ("Humor")
    expect(page).to have_content ("Back to all categories")
  end
end

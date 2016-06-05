require 'rails_helper'

RSpec.feature "edit category", type: :feature do
  scenario "logged in admin can edit category" do
    admin_creator

    visit admin_categories_path
    click_on "New Category"
    fill_in "Name", with: "Humor"
    click_on "Create Category"
    click_on "Delete Category"

    expect(page).to have_content("All Categories")
    expect(page).to_not have_content("Humor")
  end
end

require 'rails_helper'

RSpec.feature "edit category", type: :feature do
  scenario "logged in admin can edit category" do
    admin_creator

    visit admin_categories_path

    click_on "New Category"
    fill_in "Name", with: "Humor"
    click_on "Create Category"
    click_on "Edit Category"
    fill_in "Name", with: "Funny"
    click_on "Update Category"

    expect(page).to have_content("Funny")
  end
end

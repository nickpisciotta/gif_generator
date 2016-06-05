require 'rails_helper'

RSpec.feature "create category", type: :feature do
  scenario "category can be added with valid params" do
    category = "humor"

    visit categories_path
    click_on "New category"
    fill_in "Name", with: category
    click_on "Create Category"

    expect(page).to have_content category
  end

  context "the submitted data is invalid" do
    scenario "they see an error message" do
      category = ''

      visit categories_path
      click_on "New category"
      fill_in "Name", with: category
      click_on "Create Category"

      expect(page).to have_content "Name can't be blank"
    end
  end

end

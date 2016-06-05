require 'rails_helper'

RSpec.feature "default user accessiblity", type: :feature do
  scenario "default user cannot see categories index" do
    user = User.create(username: "npisciotta",
                       password: "password",
                       role: 0 )

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_categories_path

    expect(page).to_not have_content("All Categories")
    expect(page).to have_content("The page you were looking for doesn't exist.")
  end
end

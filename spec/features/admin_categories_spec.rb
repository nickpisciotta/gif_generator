require "rails_helper"

RSpec.feature "admin controls categories", type: :feature do
  scenario "logged in admin sees categories index" do
    admin = User.create(username: "npisciotta",
                        password: "password",
                        role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_categories_path

    expect(page).to have_content("All Categories")
  end
end

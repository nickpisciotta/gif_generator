require 'rails_helper'

RSpec.feature "admin controls gifs" do
  scenario "a logged in admin can see gif index" do
    admin_creator

    visit admin_gifs_path

    expect(page).to have_content("All Gifs")
  end
end

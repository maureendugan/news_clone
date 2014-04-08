require 'spec_helper'

feature 'user creates a link' do
  scenario 'successfully creates link' do
    visit new_link_path
    fill_in 'link_name', with: 'Sports'
    fill_in 'link_url', with: 'espn.go.com'
    click_button "Create Link"
    page.should have_content "Link was successfully created"
  end
end

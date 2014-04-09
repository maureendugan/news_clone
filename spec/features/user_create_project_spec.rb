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

feature 'vote on a link' do
  scenario 'successfully vote on a link' do
    visit links_path
    fill_in 'vote_link_id', with: 3
    fill_in 'vote_user_id', with: 7
    click_button "Up Vote"
    page.should have_content "Vote was successfully counted"

  end
end

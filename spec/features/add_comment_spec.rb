require 'rails_helper'

describe "the create a new comment process" do
  it "creates a new comment" do
    FactoryGirl.create(:dog)
    visit home_index_path
    find("#rescue-icon").click
    expect(page).to have_content "Sky"
    click_link "Sky"
    click_link "Add a comment"
    fill_in 'Name', :with => 'John Doe'
    fill_in 'Comment', :with => 'Is Sky good with kids'
    click_button 'Create Comment'
    expect(page).to have_content 'John Doe'
    expect(page).to have_content 'Is Sky good with kids'
  end
end

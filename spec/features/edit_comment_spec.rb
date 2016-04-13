require 'rails_helper'

describe "the edit a comment process" do
  it "edits a comment left on individual dog pages" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    FactoryGirl.create(:dog)
    visit dogs_path
    click_on "Sky"
    click_on "Add a comment"
    fill_in "Name", with: "John Doe"
    fill_in "Comment", with: "Is Sky good with kids?"
    click_on "Create Comment"
    expect(page).to have_content "John Doe"
    expect(page).to have_content "Is Sky good with kids?"
    find("#edit-comment").click
    fill_in "Comment",  with: "Is Sky good with cats?"
    click_on "Update Comment"
    expect(page).to have_content "John Doe"
    expect(page).to have_content "Is Sky good with cats?"
  end
end

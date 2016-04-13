require 'rails_helper'

describe "the delete a comment process" do
  it "deletes a comment from a rescue page" do
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
    find("#delete-comment").click
    expect(page).to have_no_content "John Doe"
    expect(page).to have_no_content "Is Sky good with kids?"
  end
end

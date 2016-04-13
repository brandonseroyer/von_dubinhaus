require 'rails_helper'

describe "the edit a dog post process" do
  it "edits a post on the app" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    FactoryGirl.create(:dog)
    visit dogs_path
    click_on "Sky"
    click_on "Edit"
    fill_in "Name",  with: "Angel"
    click_on "Update Dog"
    expect(page).to have_content "Angel"
  end
end

require 'rails_helper'

describe "the delete a donation process" do
  it "deletes a dontion record in donation index" do
    FactoryGirl.create(:donation)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit home_index_path
    click_link "Admin Tools"
    click_link "Donation Index"
    expect(page).to have_content "johndoe@email.com"
    click_on "Delete"
    expect(page).to have_no_content "johndoe@email.com"
  end
end

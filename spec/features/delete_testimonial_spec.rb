require 'rails_helper'

describe "the delete a testimonial post process" do
  it "deletes a post on the app" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:testimonial)
    visit testimonials_path
    click_on "Delete"
    expect(page).to have_no_content "Sky"
  end
end

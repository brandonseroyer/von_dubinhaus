require 'rails_helper'

describe "the delete a testimonial post process" do
  it "deletes a post on the app" do
    login_user
    post = FactoryGirl.create(:testimonial)
    visit testimonials_path
    click_on "Delete"
    expect(page).to have_no_content "Sky"
  end

  def login_user
    visit dogs_path
    click_link "Sign up"
    fill_in "Email", with: "dog@dog.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
  end
end

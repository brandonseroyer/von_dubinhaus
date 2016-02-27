require "rails_helper"

describe "the add a testimonial process" do
  it "adds a new testimonial" do
    login_user
    visit testimonials_path
    click_link "Add Testimonial"
    fill_in "Name", :with => "Sky"
    fill_in "Date", :with => "1/2/2015"
    fill_in "Story", :with => "Sky was adopted by the Millers!"
    click_on "Create Testimonial"
    expect(page).to have_content "Sky"
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

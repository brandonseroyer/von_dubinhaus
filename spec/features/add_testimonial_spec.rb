require "rails_helper"

describe "the add a testimonial process" do
  it "adds a new testimonial" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit home_index_path
    click_link "Add Alumni"
    fill_in "Name", :with => "Sky"
    click_on "Create Testimonial"
    expect(page).to have_content "Sky"
  end
end

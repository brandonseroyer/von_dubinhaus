require 'rails_helper'

describe "the delete an application process" do
  it "deletes an adoption application for rescue dog" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    FactoryGirl.create(:dog)
    visit home_index_path
    find("#rescue-icon").click
    expect(page).to have_content "Sky"
    click_link "Sky"
    click_link "Apply for Adoption"
    fill_in 'Dog', :with => 'Sky'
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    fill_in 'Phone', :with => '(503) 123-4567'
    fill_in 'Email', :with => 'johndoe@email.com'
    fill_in 'Address', :with => '123 Waggy Tail Lane'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'Oregon'
    fill_in 'Zip', :with => '97210'
    fill_in 'About', :with => 'I own a home, have no pets or kids, and want to adopt Sky!'
    click_on 'Submit Application'
    click_on 'Admin Tools'
    click_on 'Adoption Applications'
    expect(page).to have_content "123 Waggy Tail Lane"
    click_on 'Delete'
    expect(page).to have_no_content "123 Waggy Tail Lane"
  end
end

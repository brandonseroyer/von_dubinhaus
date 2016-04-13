require 'rails_helper'

describe "the add a dog process" do
  it "adds a new dog" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit home_index_path
    click_link "Admin Tools"
    click_link "Add Rescue"
    fill_in 'Name', :with => 'Sky'
    fill_in 'Breed', :with => 'German Shepherd Dog'
    fill_in 'Age', :with => '6'
    fill_in 'Sex', :with => 'Female'
    fill_in 'Info', :with => 'I want this dog'
    click_on 'Create Dog'
    expect(page).to have_content 'Sky'
  end
end

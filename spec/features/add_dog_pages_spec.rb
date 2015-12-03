require 'rails_helper'

describe "the add a dog process" do
  it "adds a new dog" do
    login_user
    visit dogs_path
    click_link "Add Dog"
    fill_in 'Name', :with => 'Sky'
    fill_in 'Breed', :with => 'German Shepherd Dog'
    fill_in 'Age', :with => '6'
    fill_in 'Sex', :with => 'Female'
    fill_in 'Info', :with => 'I want this dog'
    click_on 'Create Dog'
    expect(page).to have_content 'Sky'
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

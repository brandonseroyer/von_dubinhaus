require 'rails_helper'

describe "the add a dog process" do
  it "adds a new dog" do
    visit new_dog_path
    fill_in 'Name', :with => 'Sky'
    fill_in 'Breed', :with => 'German Shepherd Dog'
    fill_in 'Age', :with => '6'
    fill_in 'Sex', :with => 'Female'
    fill_in 'Info', :with => 'I want this dog'
    fill_in 'Image', :with => 'sky.jpg'
    click_on 'Create Dog'
    expect(page).to have_content 'Dogs'
  end

    it "gives error when no name is entered" do
    visit new_dog_path
    click_on 'Create Dog'
    expect(page).to have_content 'errors'
  end
end

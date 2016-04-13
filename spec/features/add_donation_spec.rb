require 'rails_helper'

describe "the create a new donation process" do
  it "creates a new donation" do
    visit home_index_path
    find("#donate-icon").click
    fill_in 'First name', :with => 'John'
    fill_in 'Last name', :with => 'Doe'
    fill_in 'Email', :with => 'johndoe@email.com'
    fill_in 'Amount', :with => '20'
    fill_in 'Message', :with => 'I support what you do'
    click_on 'Submit Donation'
    expect(page).to have_content 'John, you have selected a donation amount of $20.00 USD'
  end
end

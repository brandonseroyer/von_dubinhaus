require 'rails_helper'

describe Dog do
  it { should belong_to :user }
  it { should have_many :comments }
  it { should validate_presence_of :name }
  it { should validate_presence_of :breed }
  it { should validate_presence_of :sex }
  it { should validate_presence_of :age }
  it { should validate_presence_of :info }
  it { should validate_presence_of :image }
end

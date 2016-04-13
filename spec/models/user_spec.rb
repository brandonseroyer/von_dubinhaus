require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should have_many :dogs }
  it { should have_many :comments }
end

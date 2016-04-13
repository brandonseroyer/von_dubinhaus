require 'rails_helper'

describe Comment do
  it { should belong_to :dog }
  it { should validate_presence_of :name }
  it { should validate_presence_of :comment }
end

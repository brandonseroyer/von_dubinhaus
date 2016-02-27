require 'rails_helper'

describe Testimonial do
  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
  it { should validate_presence_of :story }
end

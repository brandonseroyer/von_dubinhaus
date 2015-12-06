require 'rails_helper'

describe Applicant do

  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
  it { should validate_presence_of :address }
  it { should validate_presence_of :dog }
  it { should validate_presence_of :about }

end

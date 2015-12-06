require 'rails_helper'

describe Comment do

    it { should validate_presence_of :content }
    it { should belong_to :dog }
    it { should belong_to :user }

  end

require 'rails_helper'

RSpec.describe ApplicantsController do
  describe "GET index" do
    it "returns 200 status code" do
      get :index
      expect(response.status).to eq 200
    end
  end
end
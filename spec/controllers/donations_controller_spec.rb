require 'rails_helper'

RSpec.describe DonationsController do
  describe "GET index" do
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end

    it "returns 200 status code" do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new donation" do
        expect{
          post :create, donation: FactoryGirl.attributes_for(:donation)
        }.to change(Donation,:count).by(1)
      end
    end

    it "renders the show page upon save" do
      post :create, donation: FactoryGirl.attributes_for(:donation)
      expect(response).to render_template :show
    end

    it "removes $ if present" do
      post :create, donation: FactoryGirl.attributes_for(:donation)
      expect(response).not_to include "$"
    end
    
    context "with invalid attributes" do
      it "does not save the new contact" do
        expect{
          post :create, donation: FactoryGirl.attributes_for(:invalid_donation)
        }.to_not change(Donation,:count)
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @donation = FactoryGirl.create(:donation)
    end

    it "deletes the contact" do
      expect{
        delete :destroy, id: @donation
      }.to change(Donation,:count).by(-1)
    end

    it "redirects to donations#index" do
      delete :destroy, id: @donation
      expect(response).to redirect_to donations_path
    end
  end
end

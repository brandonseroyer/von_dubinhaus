require 'rails_helper'

RSpec.describe ApplicantsController do
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
      it "creates a new applicant" do
        expect{
          post :create, applicant: FactoryGirl.attributes_for(:applicant)
        }.to change(Applicant,:count).by(1)
      end
    end

    it "renders the dogs index upon save" do
      post :create, applicant: FactoryGirl.attributes_for(:applicant)
      expect(response).to render_template :show

    end

    context "with invalid attributes" do
      it "does not save the new contact" do
        expect{
          post :create, applicant: FactoryGirl.attributes_for(:invalid_applicant)
        }.to_not change(Applicant,:count)
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @applicant = FactoryGirl.create(:applicant)
    end

    it "deletes the contact" do
      expect{
        delete :destroy, id: @applicant
      }.to change(Applicant,:count).by(-1)
    end

    it "redirects to applicants#index" do
      delete :destroy, id: @applicant
      expect(response).to redirect_to applicants_path
    end
  end
end

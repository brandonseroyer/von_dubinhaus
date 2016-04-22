require 'rails_helper'

RSpec.describe TestimonialsController do
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
      it "creates a new testimonial" do
        expect{
          post :create, testimonial: FactoryGirl.attributes_for(:testimonial)
        }.to change(Testimonial,:count).by(1)
      end
    end

    it "renders the show page upon save" do
      post :create, testimonial: FactoryGirl.attributes_for(:testimonial)
      expect(response).to redirect_to testimonials_path
    end

    context "with invalid attributes" do
      it "does not save the new contact" do
        expect{
          post :create, testimonial: FactoryGirl.attributes_for(:invalid_testimonial)
        }.to_not change(Testimonial,:count)
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @testimonial = FactoryGirl.create(:testimonial)
    end

    it "deletes the contact" do
      expect{
        delete :destroy, id: @testimonial
      }.to change(Testimonial,:count).by(-1)
    end

    it "redirects to testimonials#index" do
      delete :destroy, id: @testimonial
      expect(response).to redirect_to testimonials_path
    end
  end
end

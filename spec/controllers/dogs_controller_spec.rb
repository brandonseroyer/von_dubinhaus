require 'rails_helper'

RSpec.describe DogsController do
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
      it "creates a new dog" do
        expect{
          post :create, dog: FactoryGirl.attributes_for(:dog)
        }.to change(Dog,:count).by(1)
      end
    end

    it "renders the show page upon save" do
      post :create, dog: FactoryGirl.attributes_for(:dog)
      expect(response).to redirect_to dogs_path
    end

    context "with invalid attributes" do
      it "does not save the new dog" do
        expect{
          post :create, dog: FactoryGirl.attributes_for(:invalid_dog)
        }.to_not change(Dog,:count)
      end
    end

    context "with invalid attributes" do
      it "renders new template" do
        post :create, dog: FactoryGirl.attributes_for(:invalid_dog)
        get :new
        expect(response).to render_template :new
      end
    end
  end

  describe "GET #show" do
    it "assigns the requested dog to @dog" do
      @dog = FactoryGirl.create(:dog)
      get :show, id: @dog
      expect(assigns(:dog)).to eq(@dog)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:dog)
      expect(response).to render_template :show
    end
  end

  describe 'PUT update' do
    before :each do
      @dog = FactoryGirl.create(:dog, name: "Sky")
    end

    context "valid attributes" do
      it "located the requested @dog" do
        put :update, id: @dog, dog: FactoryGirl.attributes_for(:dog)
        expect(assigns(:dog)).to eq(@dog)
      end

      it "changes @dog's attributes" do
        put :update, id: @dog,
          dog: FactoryGirl.attributes_for(:dog, name: "Stella")
        @dog.reload
        expect(@dog.name).to eq("Stella")
      end

      it "redirects to the updated dog" do
        put :update, id: @dog, dog: FactoryGirl.attributes_for(:dog)
        expect(response).to redirect_to @dog
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @dog = FactoryGirl.create(:dog)
    end

    it "deletes the dog" do
      expect{
        delete :destroy, id: @dog
      }.to change(Dog,:count).by(-1)
    end

    it "redirects to dogs#index" do
      delete :destroy, id: @dog
      expect(response).to redirect_to dogs_path
    end
  end
end

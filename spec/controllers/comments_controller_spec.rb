require 'rails_helper'

RSpec.describe CommentsController do
  describe "POST create" do
    before :each do
      @dog = FactoryGirl.create(:dog)
    end

    context "with valid attributes" do
      it "creates a new comment" do
        expect{
          post :create, dog_id: @dog.id, comment: FactoryGirl.attributes_for(:comment)
        }.to change(Comment,:count).by(1)
      end
    end

    context "with invalid attributes" do
      it "renders new template" do
        post :create, dog_id: @dog.id, comment: FactoryGirl.attributes_for(:invalid_comment)
        expect(response).to render_template :new
      end
    end
  end
end

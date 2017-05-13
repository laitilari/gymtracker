require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe MembershipsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Membership. As you add validations to Membership, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
      {user_id: 1, gym_id:1}
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MembershipsController. Be sure to keep this updated too.
  let(:valid_session) { {user_id: 1} }

  let!(:user) { FactoryGirl.create :user }
  before :each do
     allow(controller).to receive_messages(:current_user => user)
  end
  describe "GET #index" do
    it "returns a success response" do
      membership = Membership.create! valid_attributes
      get :index, {}, valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      membership = Membership.create! valid_attributes
      get :show, {:id => membership.to_param}, valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Membership" do
        expect {
          post :create, {:membership => valid_attributes}, valid_session
        }.to change(Membership, :count).by(1)
      end

      it "redirects to the created membership" do
        post :create, {:membership => valid_attributes}, valid_session
        expect(response).to redirect_to(user)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {user_id: 1, gym_id:2}
      }

      it "updates the requested membership" do
        membership = Membership.create! valid_attributes
        put :update, {:id => membership.to_param, :membership => new_attributes}, valid_session
        membership.reload
        expect(membership.gym_id).to eq(2)
      end

      it "redirects to the membership" do
        membership = Membership.create! valid_attributes
        put :update, {:id => membership.to_param, :membership => valid_attributes}, valid_session
        expect(response).to redirect_to(membership)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested membership" do
      membership = Membership.create! valid_attributes
      expect {
        delete :destroy, {:id => membership.to_param}, valid_session
      }.to change(Membership, :count).by(-1)
    end

    it "redirects to the memberships list" do
      membership = Membership.create! valid_attributes
      delete :destroy, {:id => membership.to_param}, valid_session
      expect(response).to redirect_to(gyms_url)
    end
  end

end

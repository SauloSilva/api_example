require 'rails_helper'

RSpec.describe StoresController, type: :controller do
  let!(:store) { create(:store) }

  describe 'GET #index' do
    context "success" do
      it "returns list of stores" do
        get :index

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stores)
      end
    end
  end

  describe 'POST #create' do
    context "success" do
      it "returns object has been created" do
        post :create, params: { store: attributes_for(:store) }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:store)
      end
    end

    context "fail" do
      it "returns response error" do
        post :create, params: { store: store.attributes }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'PUT #update' do
    context "success" do
      it "returns object has been updated" do
        put :update, params: { store_id: store.id, store: attributes_for(:store) }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:store)
      end
    end

    context "fail" do
      it "returns response error" do
        put :update, params: { store_id: store.id, store: attributes_for(:store, name: nil) }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'DELETE #destroy' do
    context "success" do
      it "returns object has been updated" do
        delete :destroy, params: { store_id: store.id }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:store)
      end
    end

    context "fail" do
      it "returns response error" do
        delete :destroy, params: { store_id: 9999 }

        expect(response.status).to eq 404
        expect(response).to match_response_schema(:not_found)
      end
    end
  end
end

require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let!(:product) { create(:product) }

  describe 'GET #index' do
    context "success" do
      it "returns list of products" do
        get :index

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:products)
      end
    end
  end

  describe 'GET #show' do
    context "success" do
      it "returns list of products" do
        get :show, params: { id: product.id }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:product)
      end
    end
  end

  describe 'POST #create' do
    context "success" do
      it "returns object has been created" do
        post :create, params: { product: attributes_for(:product) }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:product)
      end
    end

    context "fail" do
      it "returns response error" do
        post :create, params: { product: product.attributes }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'PUT #update' do
    context "success" do
      it "returns object has been updated" do
        put :update, params: { id: product.id, product: attributes_for(:product) }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:product)
      end
    end

    context "fail" do
      it "returns response error" do
        put :update, params: { id: product.id, product: attributes_for(:product, name: nil) }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'DELETE #destroy' do
    context "success" do
      it "returns object has been updated" do
        delete :destroy, params: { id: product.id }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:product)
      end
    end

    context "fail" do
      it "returns response error" do
        delete :destroy, params: { id: 9999 }

        expect(response.status).to eq 404
        expect(response).to match_response_schema(:not_found)
      end
    end
  end
end

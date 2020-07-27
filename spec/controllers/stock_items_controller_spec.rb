require 'rails_helper'

RSpec.describe StockItemsController, type: :controller do
  let!(:stock_item) { create(:stock_item) }

  describe 'GET #index' do
    context "success" do
      it "returns list of stock_items" do
        get :index, params: { store_id: stock_item.store_id }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_items)
      end
    end
  end

  describe 'POST #create' do
    context "success" do
      it "returns object has been created" do
        stock_item_attrs = attributes_for(:stock_item, product_id: create(:product).id)
        post :create, params: { store_id: stock_item.store_id, stock_item: stock_item_attrs }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_item)
      end
    end

    context "fail" do
      it "returns response error" do
        post :create, params: { store_id: stock_item.store_id, stock_item: stock_item.attributes }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'PUT #update' do
    context "success" do
      it "returns object has been updated" do
        put :update, params: { store_id: stock_item.store_id, id: stock_item.id, stock_item: attributes_for(:stock_item) }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_item)
      end
    end

    context "fail" do
      it "returns response error" do
        put :update, params: { store_id: stock_item.store_id, id: stock_item.id, stock_item: attributes_for(:stock_item, product_id: nil) }

        expect(response.status).to eq 422
        expect(response).to match_response_schema(:error)
      end
    end
  end

  describe 'DELETE #destroy' do
    context "success" do
      it "returns object has been updated" do
        delete :destroy, params: { store_id: stock_item.store_id, id: stock_item.id }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_item)
      end
    end

    context "fail" do
      it "returns response error" do
        delete :destroy, params: { store_id: stock_item.store_id, id: 9999 }

        expect(response.status).to eq 404
        expect(response).to match_response_schema(:not_found)
      end
    end
  end

  describe 'POST #increase' do
    context "success" do
      it "returns object has been updated" do
        post :increase, params: { store_id: stock_item.store_id, id: stock_item.id, stock_item: { quantity: 1 } }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_item)
      end
    end
  end

  describe 'POST #decrease' do
    context "success" do
      it "returns object has been updated" do
        post :decrease, params: { store_id: stock_item.store_id, id: stock_item.id, stock_item: { quantity: 1 } }

        expect(response.status).to eq 200
        expect(response).to match_response_schema(:stock_item)
      end
    end
  end
end

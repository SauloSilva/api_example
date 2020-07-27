require 'rails_helper'

RSpec.describe StockItemSerializer, type: :serializer do
  describe 'Check attributes of serializers' do
    let(:stock_item_serializer) { described_class.new build(:stock_item) }

    it "includes the expected attributes" do
      expect(stock_item_serializer.attributes.keys).
        to contain_exactly(:product, :store, :quantity)
    end
  end
end

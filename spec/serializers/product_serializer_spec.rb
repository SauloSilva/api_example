require 'rails_helper'

RSpec.describe ProductSerializer, type: :serializer do
  describe 'Check attributes of serializers' do
    let(:product_serializer) { described_class.new build(:product) }

    it "includes the expected attributes" do
      expect(product_serializer.attributes.keys).
        to contain_exactly(:name, :description, :price, :tax, :shipping)
    end
  end
end

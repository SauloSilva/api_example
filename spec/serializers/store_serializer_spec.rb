require 'rails_helper'

RSpec.describe StoreSerializer, type: :serializer do
  describe 'Check attributes of serializers' do
    let(:store_serializer) { described_class.new build(:store) }

    it "includes the expected attributes" do
      expect(store_serializer.attributes.keys).
        to contain_exactly(:name, :address)
    end
  end
end

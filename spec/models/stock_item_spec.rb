require 'rails_helper'

RSpec.describe StockItem, type: :model do
  describe 'Relationships' do
    it { is_expected.to belong_to(:product).inverse_of(:stock_items).required }
    it { is_expected.to belong_to(:store).inverse_of(:stock_items).required }
  end

  describe 'Validations' do
    subject { build(:stock_item) }

    it { is_expected.to validate_numericality_of(:quantity).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_uniqueness_of(:product_id).scoped_to(:store_id) }
  end

  describe 'increase' do
    let!(:stock_item) { create(:stock_item, quantity: 1) }
    it { expect { stock_item.increase('1') }.to change(stock_item, :quantity).from(1).to(2) }
    it { expect { stock_item.increase(1) }.to change(stock_item, :quantity).from(1).to(2) }
    it { expect { stock_item.increase(-1) }.to change(stock_item, :quantity).from(1).to(2) }
    it { expect { stock_item.increase(0) }.to_not change(stock_item, :quantity) }
  end

  describe 'decrease' do
    let!(:stock_item) { create(:stock_item, quantity: 1) }
    it { expect { stock_item.decrease('-1') }.to change(stock_item, :quantity).from(1).to(0) }
    it { expect { stock_item.decrease(-1) }.to change(stock_item, :quantity).from(1).to(0) }
    it { expect { stock_item.decrease(1) }.to change(stock_item, :quantity).from(1).to(0) }
    it { expect { stock_item.decrease(0) }.to_not change(stock_item, :quantity) }
  end
end

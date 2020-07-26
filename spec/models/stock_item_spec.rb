require 'rails_helper'

RSpec.describe StockItem, type: :model do
  describe 'Relationships' do
    it { is_expected.to belong_to(:product).inverse_of(:stock_items).required }
    it { is_expected.to belong_to(:store).inverse_of(:stock_items).required }
  end

  describe 'Validations' do
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than_or_equal_to(0) }
  end
end

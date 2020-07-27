require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Relationships' do
    it { is_expected.to have_many(:stock_items).inverse_of(:product).dependent(:restrict_with_error) }
  end

  describe 'Validations' do
    subject { build(:product) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:tax) }
    it { is_expected.to validate_presence_of(:shipping) }

    it { is_expected.to validate_numericality_of(:price).is_greater_than(0) }

    it { is_expected.to validate_numericality_of(:tax).is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:shipping).is_greater_than_or_equal_to(0) }

    it { is_expected.to validate_uniqueness_of(:name) }
  end
end

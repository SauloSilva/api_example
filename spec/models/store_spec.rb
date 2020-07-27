require 'rails_helper'

RSpec.describe Store, type: :model do
  describe 'Relationships' do
    it { is_expected.to have_many(:stock_items).inverse_of(:store).dependent(:restrict_with_error) }
  end

  describe 'Validations' do
    subject { build(:store) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_uniqueness_of(:name) }
  end
end

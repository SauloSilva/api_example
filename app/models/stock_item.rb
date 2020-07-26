class StockItem < ApplicationRecord
  # Relationships
  belongs_to :product, inverse_of: :stock_items, required: true
  belongs_to :store, inverse_of: :stock_items, required: true

  # Validations
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

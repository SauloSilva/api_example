class StockItem < ApplicationRecord
  # Relationships
  belongs_to :product, inverse_of: :stock_items, required: true
  belongs_to :store, inverse_of: :stock_items, required: true

  # Validations
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :product_id, uniqueness: { scope: :store_id }

  def increase(qtt)
    self.quantity += qtt.to_i.abs
    save
  end

  def decrease(qtt)
    self.quantity -= qtt.to_i.abs
    save
  end
end

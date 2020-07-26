class Product < ApplicationRecord
  # Relationships
  has_many :stock_items, inverse_of: :product, dependent: :restrict_with_error

  # Validations
  validates :name, :description, :price, :tax, :shipping, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :tax, :shipping, numericality: { greater_than_or_equal_to: 0 }
end

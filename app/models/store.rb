class Store < ApplicationRecord
  # Relationships
  has_many :stock_items, inverse_of: :store, dependent: :restrict_with_error

  # Validations
  validates :name, presence: true, uniqueness: true
end

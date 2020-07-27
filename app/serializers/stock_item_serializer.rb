class StockItemSerializer < ActiveModel::Serializer
  attributes :product, :store, :quantity

  belongs_to :product
  belongs_to :store
end

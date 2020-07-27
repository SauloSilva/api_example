class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :price, :tax, :shipping
end

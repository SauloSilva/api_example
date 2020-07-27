FactoryBot.define do
  factory :stock_item do
    product
    store
    quantity { 1 }
  end
end

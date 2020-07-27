FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Commerce.material }
    price { Faker::Commerce.price }
    tax { 0 }
    shipping { 0 }
  end
end

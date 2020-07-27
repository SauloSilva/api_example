require 'faker'

products_attrs = 3.times.map { FactoryBot.attributes_for(:product) }
Product.create(products_attrs)

stores_attrs = 3.times.map { FactoryBot.attributes_for(:store) }
Store.create(stores_attrs)

StockItem.create([
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) },
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) },
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) }
                    ])

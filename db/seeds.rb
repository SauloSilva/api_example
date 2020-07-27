# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

products_attrs = 3.times.map { FactoryBot.attributes_for(:product) }
Product.create(products_attrs)

stores_attrs = 3.times.map { FactoryBot.attributes_for(:store) }
Store.create(stores_attrs)

stock_items_atttr = [
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) },
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) },
                      { product: Product.order('RANDOM()').first, store: Store.order('RANDOM()').first, quantity: rand(0..1000) }
                    ]

StockItem.create(stock_items_atttr)

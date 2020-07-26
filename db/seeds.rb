# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products_attrs =  [
                    { name: 'Lápis', description: 'lápis preto', price: 1.99, tax: 0, shipping: 0 },
                    { name: 'Caneta', description: 'caneta azul', price: 3.5, tax: 0.34, shipping: 5 },
                    { name: 'Estojo', description: 'estojo verde', price: 10, tax: 0.01, shipping: 5 }
                  ]

stores_attrs =  [
                  { name: 'Loja da esquina' },
                  { name: 'Livraria do zé' }
                ]

Product.create(products_attrs)
Store.create(stores_attrs)

stock_items_atttr = [
                      { product: Product.first, store: Store.first, quantity: 0 },
                      { product: Product.second, store: Store.second, quantity: 10 },
                      { product: Product.third, store: Store.first, quantity: 20 }
                    ]

StockItem.create(stock_items_atttr)

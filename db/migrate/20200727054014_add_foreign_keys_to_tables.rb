class AddForeignKeysToTables < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :stock_items, :products
    add_foreign_key :stock_items, :stores
  end
end

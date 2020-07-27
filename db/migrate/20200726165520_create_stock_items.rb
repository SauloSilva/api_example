class CreateStockItems < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_items do |t|
      t.references :store, null: false, index: true
      t.references :product, null: false, index: true
      t.integer :quantity
      t.timestamps
    end

    add_index :stock_items, [:store_id, :product_id], unique: true
  end
end

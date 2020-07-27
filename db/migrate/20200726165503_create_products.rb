class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :description
      t.decimal :price, precision: 9, scale: 2
      t.decimal :tax, precision: 9, scale: 2, default: 0
      t.decimal :shipping, precision: 9, scale: 2, default: 0
      t.timestamps
    end
  end
end

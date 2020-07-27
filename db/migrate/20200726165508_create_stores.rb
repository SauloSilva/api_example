class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :address
      t.timestamps
    end
  end
end

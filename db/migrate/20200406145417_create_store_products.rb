class CreateStoreProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :store_products do |t|
      t.references :store, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :stock, null: false,default: 0

      t.timestamps
    end
  end
end

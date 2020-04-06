class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, limit: 50, null: false
      t.string :color, default:-1, null: false
      t.string :size, default:-1, null: false
      t.decimal :price, default:0, null: false, precision: 8, scale: 2
      t.integer :stock, default:0, null: false

    end
  end
end

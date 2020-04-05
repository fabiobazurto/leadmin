class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, limit: 50, null: false
      t.string :street, limit: 50, null: false
      t.string :number, limit: 6, null: false
      t.string :zipcode, limit: 6
      t.references :city, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end

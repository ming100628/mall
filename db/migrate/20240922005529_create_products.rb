class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.string :description
      t.float :price
      t.integer :quantity
      t.references :shop
      t.timestamps
    end
  end
end

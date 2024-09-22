class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :password_hash
      t.timestamps
    end
  end
end

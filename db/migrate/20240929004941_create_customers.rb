class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password_hash
      t.timestamps
    end
  end
end

class AddSessionHashToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :session_hash, :string
  end
end

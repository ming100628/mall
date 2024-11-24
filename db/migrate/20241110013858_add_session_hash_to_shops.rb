class AddSessionHashToShops < ActiveRecord::Migration[7.0]
  def change
    add_column :shops, :session_hash, :string
  end
end

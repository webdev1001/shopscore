class AddHashToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_hash, :string
  end
end

class AddShopIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shop_id, :integer
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :shop_id
      t.string :order_number
      t.string :email
      t.integer :rating
      t.text :remark
      t.datetime :do_not_send_until
      t.boolean :sent

      t.timestamps
    end
  end
end

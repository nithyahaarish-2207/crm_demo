class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.references :menu_item, index: true
      t.integer :count
      t.text :deliver_address
      t.integer :bill_total

      t.timestamps
    end
  end
end

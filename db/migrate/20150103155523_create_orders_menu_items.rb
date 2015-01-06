class CreateOrdersMenuItems < ActiveRecord::Migration
  def change
    create_table :order_menu_items do |t|
      t.references :order
      t.references :menu_item

      t.timestamps
    end
  end
end

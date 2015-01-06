class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.text :item_description
      t.integer :item_cost

      t.timestamps
    end
  end
end

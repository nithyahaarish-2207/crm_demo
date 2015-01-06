class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :item
      t.integer :available_count
      t.integer :required_count
      t.boolean :item_type
      t.references :user, index: true

      t.timestamps
    end
  end
end

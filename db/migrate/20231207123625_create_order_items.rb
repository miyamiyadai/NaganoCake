class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: { to_table: :orders, null: false }
      t.references :item, foreign_key: { to_table: :items, null: false }
      t.integer :purchase_price, null: false
      t.integer :amount, null: 

      t.timestamps
    end
  end
end

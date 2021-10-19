class CreateRelation < ActiveRecord::Migration[6.1]
  def change
    create_table :relations do |t|
      t.integer :menu_id
      t.integer :cart_id
      t.integer :order_id
      t.integer :user_id
      t.integer :quantity
      t.timestamps
    end
  end
end

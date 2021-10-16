class CreateMenu < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :item
      t.integer :price
      t.integer :rating
      t.timestamps
    end
  end
end

class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string  :name
      t.string  :status
      t.integer :rating
      t.timestamps
    end
  end
end

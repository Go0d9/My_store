class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items, id: false do |t|
      t.integer :cart_id
      t.integer :item_id
    end
  end
end

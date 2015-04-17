class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :picture
      t.integer :imageable_id
      t.string :imageable_type
      t.timestamps
    end

    add_index :images, [:imageable_id, :imageable_type]
  end
end

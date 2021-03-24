class CreatePastries < ActiveRecord::Migration[5.2]
  def change
    create_table :pastries do |t|
      t.boolean :gluten_free
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end

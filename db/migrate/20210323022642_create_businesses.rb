class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.boolean :big_company
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end

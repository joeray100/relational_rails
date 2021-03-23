class CreateBakeries < ActiveRecord::Migration[5.2]
  def change
    create_table :bakeries do |t|
      t.boolean :open
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end

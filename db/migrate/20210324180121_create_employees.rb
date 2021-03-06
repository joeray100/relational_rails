class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :hours_worked
      t.boolean :likes_job
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end

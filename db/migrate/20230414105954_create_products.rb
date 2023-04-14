class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :starting_price
      t.datetime :start_date
      t.datetime :end_date
      t.string :image

      t.timestamps
    end
  end
end

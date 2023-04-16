class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.float :bid_amount
      t.datetime :bid_time

      t.timestamps
    end
  end
end

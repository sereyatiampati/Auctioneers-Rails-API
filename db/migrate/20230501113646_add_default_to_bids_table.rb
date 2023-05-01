class AddDefaultToBidsTable < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bids, :bid_amount, from: nil, to: 0.0
  end
end

class EditBidsTable < ActiveRecord::Migration[7.0]
  def change
    Bid.where(bid_amount: nil).update_all(bid_amount: 0.0)
  end
end

class RemoveUserIdFromBids < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :bids, :users
  end
end

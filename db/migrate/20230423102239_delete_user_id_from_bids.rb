class DeleteUserIdFromBids < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :user_id
  end
end

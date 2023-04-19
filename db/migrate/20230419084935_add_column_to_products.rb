class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :successful_bid_id, :integer
  end
end

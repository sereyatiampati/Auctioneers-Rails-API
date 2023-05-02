class AddCascadeToDeleteOnBids < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :bids, :products
    add_foreign_key :bids, :products, on_delete: :cascade
  end
end

class RemoveRoleIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :users, :roles
  end
end

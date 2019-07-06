class AddUserIdToGrants < ActiveRecord::Migration[6.0]
  def change
    add_column :grants, :user_id, :integer
  end
end

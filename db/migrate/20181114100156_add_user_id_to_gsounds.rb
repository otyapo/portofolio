class AddUserIdToGsounds < ActiveRecord::Migration[5.2]
  def change
    add_column :gsounds, :user_id, :integer
  end
end

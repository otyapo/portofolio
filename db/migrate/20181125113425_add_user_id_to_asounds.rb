class AddUserIdToAsounds < ActiveRecord::Migration[5.2]
  def change
    add_column :asounds, :user_id, :integer
    add_column :bsounds, :user_id, :integer
    add_column :psounds, :user_id, :integer
  end
end

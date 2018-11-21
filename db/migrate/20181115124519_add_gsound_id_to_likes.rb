class AddGsoundIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :gsound_id, :integer
  end
end

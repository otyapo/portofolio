class RemoveGSoundIdFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :g_sound_id, :integer
  end
end

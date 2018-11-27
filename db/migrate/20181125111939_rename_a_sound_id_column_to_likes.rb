class RenameASoundIdColumnToLikes < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :likes, :a_sound_id, :asound_id
  	 rename_column :likes, :b_sound_id, :bsound_id
  	 rename_column :likes, :p_sound_id, :psound_id
  end
end

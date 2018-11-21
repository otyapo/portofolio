class RenameGSoundIdToFavorites < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :favorites, :g_sound_id, :gsound_id
  	 rename_column :favorites, :b_sound_id, :bsound_id
  	 rename_column :favorites, :a_sound_id, :asound_id
  	 rename_column :favorites, :p_sound_id, :psound_id
  end
end

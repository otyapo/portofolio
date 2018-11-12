class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :g_sound_id
      t.integer :b_sound_id
      t.integer :p_sound_id
      t.integer :a_sound_id

      t.timestamps
    end
  end
end

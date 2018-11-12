class CreatePsounds < ActiveRecord::Migration[5.2]
  def change
    create_table :psounds do |t|
      t.string :p_sound
      t.text :p_body
      t.string :p_bpm
      t.string :p_key
      t.string :p_part
      t.string :p_likes_count

      t.timestamps
    end
  end
end

class CreateGsounds < ActiveRecord::Migration[5.2]
  def change
    create_table :gsounds do |t|
      t.string :g_sound
      t.text :g_body
      t.string :g_bpm
      t.string :g_key
      t.string :g_part
      t.string :g_likes_count

      t.timestamps
    end
  end
end

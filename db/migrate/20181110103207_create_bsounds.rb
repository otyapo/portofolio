class CreateBsounds < ActiveRecord::Migration[5.2]
  def change
    create_table :bsounds do |t|
      t.string :b_sound
      t.text :b_body
      t.string :b_bpm
      t.string :b_key
      t.string :b_part
      t.string :b_likes_count

      t.timestamps
    end
  end
end

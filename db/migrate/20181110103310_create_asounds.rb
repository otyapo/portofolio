class CreateAsounds < ActiveRecord::Migration[5.2]
  def change
    create_table :asounds do |t|
      t.string :a_sound
      t.text :a_body
      t.string :a_bpm
      t.string :a_key_string
      t.string :a_part_string
      t.string :a_likes_count

      t.timestamps
    end
  end
end

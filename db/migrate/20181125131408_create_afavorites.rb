class CreateAfavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :afavorites do |t|
      t.integer :user_id
      t.integer :asound_id

      t.timestamps
    end
  end
end

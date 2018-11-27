class CreatePfavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :pfavorites do |t|
      t.integer :user_id
      t.integer :psound_id

      t.timestamps
    end
  end
end

class CreatePlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :plikes do |t|
      t.integer :user_id
      t.integer :psound_id

      t.timestamps
    end
  end
end

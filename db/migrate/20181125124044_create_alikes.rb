class CreateAlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :alikes do |t|
      t.integer :user_id
      t.integer :asound_id

      t.timestamps
    end
  end
end

class CreateBlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :blikes do |t|
      t.integer :user_id
      t.integer :bsound_id

      t.timestamps
    end
  end
end

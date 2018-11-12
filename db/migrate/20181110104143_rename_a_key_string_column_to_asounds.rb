class RenameAKeyStringColumnToAsounds < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :asounds, :a_part_string, :a_part
  	 rename_column :asounds, :a_key_string, :a_key
  end
end

class RenameMailColumnToInquires < ActiveRecord::Migration[5.2]
  def change
  	rename_column :inquiries, :mail, :email
  end
end

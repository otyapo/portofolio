class ChangeDatatypeBLikesCountOfBsounds < ActiveRecord::Migration[5.2]
  def change
  	change_column :asounds, :a_likes_count, :integer
  	change_column :bsounds, :b_likes_count, :integer
  	change_column :psounds, :p_likes_count, :integer
  end
end

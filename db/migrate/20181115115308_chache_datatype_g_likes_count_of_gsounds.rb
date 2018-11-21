class ChacheDatatypeGLikesCountOfGsounds < ActiveRecord::Migration[5.2]
  def change
  	 change_column :gsounds, :g_likes_count, :integer
  end
end

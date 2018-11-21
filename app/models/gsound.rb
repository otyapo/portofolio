class Gsound < ApplicationRecord
	mount_uploader :g_sound, AudioFileUploader

    default_scope -> { order(created_at: :desc) }

    belongs_to :user

    has_many :favorites
    has_many :users, through: :favorites

    has_many :likes, dependent: :destroy

	def liked_by?(user)
      likes.where(user_id: user.id).exists?
    end



end

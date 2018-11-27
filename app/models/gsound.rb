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





    validates :g_sound, presence: true
    validates :g_bpm, presence: true
    validates :g_key, presence: true
    validates :g_part, presence: true
    validates :g_body, presence: true, length: { maximum: 150 }
end

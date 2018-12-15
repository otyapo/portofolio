class Psound < ApplicationRecord
	mount_uploader :p_sound, AudioFileUploader

	default_scope -> { order(created_at: :desc) }

    belongs_to :user

    has_many :pfavorites, dependent: :destroy
    has_many :users, through: :favorites

    has_many :plikes, dependent: :destroy

	def liked_by?(user)
      plikes.where(user_id: user.id).exists?
    end



    validates :p_sound, presence: true
    validates :p_bpm, presence: true
    validates :p_key, presence: true
    validates :p_part, presence: true
    validates :p_body, presence: true, length: { maximum: 150 }
end

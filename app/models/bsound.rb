class Bsound < ApplicationRecord
	mount_uploader :b_sound, AudioFileUploader

	default_scope -> { order(created_at: :desc) }

    belongs_to :user

    has_many :favorites
    has_many :users, through: :favorites

    has_many :blikes, dependent: :destroy

	def liked_by?(user)
      blikes.where(user_id: user.id).exists?
    end


    validates :b_sound, presence: true
    validates :b_bpm, presence: true
    validates :b_key, presence: true
    validates :b_part, presence: true
    validates :b_body, presence: true, length: { maximum: 150 }

end

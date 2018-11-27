class Asound < ApplicationRecord
	 mount_uploader :a_sound, AudioFileUploader

    default_scope -> { order(created_at: :desc) }

    belongs_to :user

    has_many :favorites
    has_many :users, through: :favorites

    has_many :alikes, dependent: :destroy

	def liked_by?(user)
      alikes.where(user_id: user.id).exists?
    end

    validates :a_sound, presence: true
    validates :a_bpm, presence: true
    validates :a_key, presence: true
    validates :a_part, presence: true
    validates :a_body, presence: true, length: { maximum: 150 }

end

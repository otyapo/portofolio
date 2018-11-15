class Bsound < ApplicationRecord
	mount_uploader :b_sound, AudioFileUploader

	validates :b_sound, presence: true
    validates :b_bpm, presence: true
    validates :b_key, presence: true
    validates :b_part, presence: true
    validates :b_body, presence: true
end

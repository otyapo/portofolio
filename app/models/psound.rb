class Psound < ApplicationRecord
	mount_uploader :p_sound, AudioFileUploader

	validates :p_sound, presence: true
    validates :p_bpm, presence: true
    validates :p_key, presence: true
    validates :p_part, presence: true
    validates :p_body, presence: true
end

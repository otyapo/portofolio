class Asound < ApplicationRecord
	 mount_uploader :asound, AudioFileUploader

  validates :a_sound, presence: true
  validates :a_bpm, presence: true
  validates :a_key, presence: true
  validates :a_part, presence: true
  validates :a_body, presence: true

end

class Gsound < ApplicationRecord
	mount_uploader :g_sound, AudioFileUploader

    default_scope -> { order(created_at: :desc) }

    belongs_to :user

end

class AudioFile < ApplicationRecord
    mount_uploader :gfile, AudioFileUploader
end

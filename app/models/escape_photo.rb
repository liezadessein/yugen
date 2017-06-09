class EscapePhoto < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :creative_escape
end

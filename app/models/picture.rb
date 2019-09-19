class Picture < ApplicationRecord
  belongs_to :picturetable, polymorphic: true
  mount_uploader :picture_link, PictureUploader
end

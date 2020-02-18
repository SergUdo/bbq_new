class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  attribute :image_url, default: default_image

  scope :persisted, -> { where "id IS NOT NULL" }
end

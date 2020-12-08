class Project < ApplicationRecord
  mount_uploader :cover_image_url, ImageUploader
end

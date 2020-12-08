class Team < ApplicationRecord
  mount_uploader :image_url, ImageUploader
end

class ProjectImage < ApplicationRecord
  belongs_to :project
  mount_uploader :image_url, ImageUploader
end

class Project < ApplicationRecord
  has_many :project_images, dependent: :destroy, inverse_of: :project
  accepts_nested_attributes_for :project_images, allow_destroy: true, reject_if: :all_blank
  mount_uploader :cover_image_url, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id? #will change the slug if the name changed
    name_changed?
  end
end

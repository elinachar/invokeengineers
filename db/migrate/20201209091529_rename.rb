class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_table :create_project_images, :project_images
  end
end

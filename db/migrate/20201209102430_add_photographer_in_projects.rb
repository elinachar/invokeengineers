class AddPhotographerInProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :photographer, :string
    add_column :projects, :photographer_website, :string
  end
end

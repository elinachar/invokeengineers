class AddAreaToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :area, :string
  end
end

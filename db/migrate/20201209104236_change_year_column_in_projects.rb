class ChangeYearColumnInProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :year_string, :string
  end
end

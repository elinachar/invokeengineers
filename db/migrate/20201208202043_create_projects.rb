class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :short_description
      t.text :description
      t.string :location
      t.date :year
      t.string :cover_image_url

      t.timestamps
    end
  end
end

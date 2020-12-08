class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :first_name
      t.string :last_name
      t.string :proffession
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

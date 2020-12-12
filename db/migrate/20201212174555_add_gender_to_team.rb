class AddGenderToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :gender, :string
  end
end

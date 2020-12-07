class AddPostalCodeToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :postal_code, :string
  end
end

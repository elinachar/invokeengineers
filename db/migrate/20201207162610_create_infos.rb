class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.text :short_description
      t.text :about_us
      t.string :telephone_number
      t.string :fax_number
      t.string :email
      t.string :address
      t.string :town
      t.string :country
      t.string :contact_email
      t.string :facebook_url
      t.string :instagram_url
      t.string :twitter_url

      t.timestamps
    end
  end
end

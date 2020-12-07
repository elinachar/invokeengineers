json.extract! info, :id, :short_description, :about_us, :telephone_number, :fax_number, :email, :address, :town, :country, :contact_email, :facebook_url, :instagram_url, :twitter_url, :created_at, :updated_at
json.url info_url(info, format: :json)

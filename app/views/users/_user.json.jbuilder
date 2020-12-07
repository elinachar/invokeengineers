json.extract! user, :id, :first_name, :last_name, :admin, :editor, :created_at, :updated_at
json.url user_url(user, format: :json)

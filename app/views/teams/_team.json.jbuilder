json.extract! team, :id, :first_name, :last_name, :proffession, :description, :image_url, :created_at, :updated_at
json.url team_url(team, format: :json)

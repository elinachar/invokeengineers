json.extract! project, :id, :name, :short_description, :description, :location, :year, :cover_image_url, :created_at, :updated_at
json.url project_url(project, format: :json)

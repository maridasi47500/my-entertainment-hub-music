json.extract! photo, :id, :name, :year, :location_id, :cat_id, :nationality_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)

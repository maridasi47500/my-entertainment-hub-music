json.extract! event, :id, :title, :content, :pic, :written_by, :created_at, :updated_at
json.url event_url(event, format: :json)

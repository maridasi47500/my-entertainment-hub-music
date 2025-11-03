json.extract! video, :id, :title, :pic, :link, :created_at, :updated_at
json.url video_url(video, format: :json)

json.extract! movie, :id, :title, :content, :myname, :cat_id, :pic, :link, :created_at, :updated_at
json.url movie_url(movie, format: :json)

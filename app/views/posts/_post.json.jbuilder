json.extract! post, :id, :title, :content, :pic, :textpic, :cat_id, :written_by, :created_at, :updated_at
json.url post_url(post, format: :json)

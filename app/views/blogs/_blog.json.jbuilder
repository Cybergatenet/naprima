json.extract! blog, :id, :title, :body, :username, :created_at, :updated_at
json.url blog_url(blog, format: :json)

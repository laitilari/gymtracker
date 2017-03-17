json.extract! user, :id, :username, :admin, :blocked, :created_at, :updated_at
json.url user_url(user, format: :json)

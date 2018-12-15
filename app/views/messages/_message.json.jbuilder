json.extract! message, :id, :body, :destruction, :created_at, :updated_at
json.url message_url(message, format: :json)

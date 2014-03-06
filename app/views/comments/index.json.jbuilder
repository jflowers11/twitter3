json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :tweet_id, :comment
  json.url comment_url(comment, format: :json)
end

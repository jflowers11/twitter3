json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user_id, :tweet, :num_comment
  json.url tweet_url(tweet, format: :json)
end

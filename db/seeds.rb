require 'faker'

#create 50 users
50.times do 
  user = User.new(email: Faker::Internet.email, 
                  password: 'password')
  user.save
end
 
#just testing 
  jf = User.new(email: 'jaquetaflowers@gmail.com', 
                  password: 'password')
  jf.save


#create 12 tweets per user
users = User.all
users.each do |user|
  
  rand(12..20).times do 
    #12.times do
    tweet = Tweet.new(tweet: Faker::Lorem.words(30).join(" "),
                      user_id: user.id)
    tweet.save
  end
end

tweets = Tweet.all
tweets.each do |tweet|
  12.times do
    comment = Comment.new(comment: Faker::Lorem.words(30).join(" "),
                      tweet_id: tweet.id)
   	comment.save
  end
end



puts "#{User.count} users created."
puts "#{Tweet.count} tweets created."
puts "#{Comment.count} comments created."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

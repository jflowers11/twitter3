class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.text :tweet
      t.integer :num_comment

      t.timestamps
    end
  end
end

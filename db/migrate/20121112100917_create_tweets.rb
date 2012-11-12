class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.user :references
      t.string :message

      t.timestamps
    end
  end
end

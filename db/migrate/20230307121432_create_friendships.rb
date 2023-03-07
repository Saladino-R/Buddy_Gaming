class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :friend_id, null: false
      t.boolean :confirm, default: nil
      t.timestamps
    end
  end
end

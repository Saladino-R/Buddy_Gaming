class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.bigint :friend_id, null: false
      t.timestamps
    end
  end
end

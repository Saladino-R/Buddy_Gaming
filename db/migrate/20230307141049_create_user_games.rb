class CreateUserGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_games do |t|
      t.string :language
      t.string :level
      t.string :mood
      t.string :mode
      t.string :console
      t.references :user, null: false, foreign_key: true
      t.integer :game_id

      t.timestamps
    end
  end
end

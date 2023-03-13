# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroy user'
User.destroy_all
puts "Old users destroyed !"
puts 'Creating user'

user1 = User.create(email: "email@email.ab", password: "123456", nickname: "Leon", birthday: Time.now, city: "Nice")
user2 = User.create(email: "email@email.fr", password: "123456", nickname: "Luca", birthday: Time.now, city: "Milan")
user3 = User.create(email: "email@email.it", password: "123456", nickname: "Elisa", birthday: Time.now, city: "Venice")
user4 = User.create(email: "email@email.ro", password: "123456", nickname: "Marius", birthday: Time.now, city: "Bucharest")
user5 = User.create(email: "email@email.ie", password: "123456", nickname: "Mark", birthday: Time.now, city: "Berlin")
user6 = User.create(email: "email@email.dn", password: "123456", nickname: "Anne", birthday: Time.now, city: "Paris")
user7 = User.create(email: "email@email.gm", password: "123456", nickname: "Thor", birthday: Time.now, city: "Stockholm")

puts "Done #{User.count}"

# puts 'Creating FRIENDSHIPS'
# friendship1 = Friendship.create( user_id: 1, friend_id: 2)
# friendship2 = Friendship.create( user_id: 1, friend_id: 3)
# friendship3 = Friendship.create( user_id: 1, friend_id: 4)
# friendship4 = Friendship.create( user_id: 1, friend_id: 5)
# friendship5 = Friendship.create( user_id: 2, friend_id: 3)
# friendship6 = Friendship.create( user_id: 4, friend_id: 3)
# friendship7 = Friendship.create( user_id: 3, friend_id: 5)
# friendship8 = Friendship.create( user_id: 2, friend_id: 5)

# puts "Done #{Friendship.count}"

puts "Delete the old UserGames"
UserGame.destroy_all
puts "Old user games destroyed !"

puts 'Creating USERGAMES'

UserGame.create(user_id: user1.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
UserGame.create(user_id: user2.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
UserGame.create(user_id: user3.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
UserGame.create(user_id: user4.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
UserGame.create(user_id: user5.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
UserGame.create(user_id: user6.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
UserGame.create(user_id: user7.id, game_id: 3498, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')

puts "Done #{UserGame.count}"

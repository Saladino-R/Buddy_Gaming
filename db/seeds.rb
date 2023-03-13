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
# userE = User.create(email: "email@email.ee", password: "123456", nickname: "Elena", birthday: Time.now, city: "Nice")
# userR = User.create(email: "email@email.rr", password: "123456", nickname: "Ryan", birthday: Time.now, city: "Cannes")
# userG = User.create(email: "email@email.gg", password: "123456", nickname: "Guillaume", birthday: Time.now, city: "Grasse")

userJ = User.create(email: "email@email.jj", password: "123456", nickname: "Jeff", birthday: Time.now, city: "Frejus")
userV = User.create(email: "email@email.vv", password: "123456", nickname: "Veronika", birthday: Time.now, city: "Cannes")
userM = User.create(email: "email@email.mm", password: "123456", nickname: "Mark", birthday: Time.now, city: "Cuers")

user1 = User.create(email: "email@email.ab", password: "123456", nickname: "Leon", birthday: Time.now, city: "Nice")
user2 = User.create(email: "email@email.ac", password: "123456", nickname: "Luca", birthday: Time.now, city: "Milan")
user3 = User.create(email: "email@email.ad", password: "123456", nickname: "Elisa", birthday: Time.now, city: "Venice")
user4 = User.create(email: "email@email.ae", password: "123456", nickname: "Marius", birthday: Time.now, city: "Bucharest")
user5 = User.create(email: "email@email.af", password: "123456", nickname: "Mark", birthday: Time.now, city: "Berlin")
user6 = User.create(email: "email@email.ag", password: "123456", nickname: "Anne", birthday: Time.now, city: "Paris")
user7 = User.create(email: "email@email.ah", password: "123456", nickname: "Thor", birthday: Time.now, city: "Stockholm")
user8 = User.create(email: "email@email.ba", password: "123456", nickname: "John", birthday: Time.now, city: "Marseille")
user9 = User.create(email: "email@email.bb", password: "123456", nickname: "Dave", birthday: Time.now, city: "Udine")
user10 = User.create(email: "email@email.bc", password: "123456", nickname: "Paul", birthday: Time.now, city: "Nantes")
user11 = User.create(email: "email@email.bd", password: "123456", nickname: "Dana", birthday: Time.now, city: "London")
user12 = User.create(email: "email@email.be", password: "123456", nickname: "Jules", birthday: Time.now, city: "Berlin")
user13 = User.create(email: "email@email.bf", password: "123456", nickname: "Ion", birthday: Time.now, city: "Tokyo")
user14 = User.create(email: "email@email.bg", password: "123456", nickname: "Bobby", birthday: Time.now, city: "Ventimiglia")
user15 = User.create(email: "email@email.bh", password: "123456", nickname: "Billy", birthday: Time.now, city: "Genova")
user16 = User.create(email: "email@email.ca", password: "123456", nickname: "Patty", birthday: Time.now, city: "Oslo")
user17 = User.create(email: "email@email.cb", password: "123456", nickname: "Mary", birthday: Time.now, city: "Madrid")
user18 = User.create(email: "email@email.cc", password: "123456", nickname: "Alex", birthday: Time.now, city: "Grenada")
user19 = User.create(email: "email@email.cd", password: "123456", nickname: "Natalia", birthday: Time.now, city: "Dublin")
user20 = User.create(email: "email@email.ce", password: "123456", nickname: "Gabi", birthday: Time.now, city: "Galway")
user21 = User.create(email: "email@email.cf", password: "123456", nickname: "Ellie", birthday: Time.now, city: "Grasse")
user22 = User.create(email: "email@email.ch", password: "123456", nickname: "Fede", birthday: Time.now, city: "Casablanca")




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


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#DESTROY ALL _______________________________________________________________
  puts 'Destroy user'
  User.destroy_all
  puts "Old users destroyed !"
  puts "Delete the old UserGames"
  UserGame.destroy_all
  puts "Old user games destroyed !"
  puts 'Destroy Friendship'
  Friendship.destroy_all
  puts "Old Friendships destroyed !"
#DESTROY ALL _______________________________________________________________

#BIRTHDAY___________________________________________________________________
  date1 = Date.new(2001, 11, 6)
  date2 = Date.new(1989, 6, 17)
  date3 = Date.new(1968, 12, 17)
  date4 = Date.new(2008, 5, 23)
  date5 = Date.new(1977, 9, 4)
  date6 = Date.new(2014, 8, 15)
  date7 = Date.new(1982, 2, 10)
  date8 = Date.new(1993, 12, 8)
  date9 = Date.new(1971, 4, 17)
  date10 = Date.new(1999, 1, 27)
  date11 = Date.new(2010, 10, 12)
  date12 = Date.new(1986, 11, 22)
  date13 = Date.new(2002, 12, 16)
  date14 = Date.new(1979, 5, 18)
  date15 = Date.new(1991, 3, 5)
  date16 = Date.new(1993, 2, 1)
  date17 = Date.new(1998, 9, 27)
  date18 = Date.new(1985, 8, 7)
  date19 = Date.new(1976, 1, 29)
  date20 = Date.new(2007, 6, 26)
  date21 = Date.new(1994, 4, 10)
  date22 = Date.new(1981, 7, 13)
  date23 = Date.new(2013, 11, 28)
  date24 = Date.new(1972, 12, 19)
  date25 = Date.new(1992, 8, 3)
  date26 = Date.new(1995, 2, 1)
  date27 = Date.new(1987, 11, 28)
#BIRTHDAY___________________________________________________________________

#BIO___________________________________________________________________
  bio1 = "The master of mayhem, the king of chaos, the destroyer of digital worlds - that's me, the one and only video game legend."
  bio2 = "I'm the kind of gamer who doesn't just play for fun - I play to win. And I always win, because I cheat."
  bio3 = "I may look like a noob, but don't let my innocent face fool you - I'm a video game ninja, and I'll pwn you before you even know what hit you."
  bio4 = "I don't always play video games, but when I do, I prefer to play them upside-down, blindfolded, and with my feet."
  bio5 = "I've been playing video games since before I could walk, and I still can't beat my little sister at Mario Kart."
  bio6 = "I'm not just a gamer - I'm a virtual adventurer, exploring digital worlds and slaying pixelated dragons."
  bio7 = "I'm not addicted to video games, I just have an intense passion for them that borders on unhealthy obsession."
  bio8 = "I don't need to take breaks from playing video games - I just drink Mountain Dew and eat Doritos to keep my energy levels up."
  bio9 = "I'm not just a gamer, I'm a storyteller - creating epic sagas and unforgettable characters with every button press."
  bio10 = "I'm the kind of gamer who always plays on the hardest difficulty setting, just so I can brag about it to my friends."
  bio11 = "I don't always win at video games, but when I do, I make sure to do a victory dance that embarrasses everyone in the room."
  bio12 = "I'm not just a gamer, I'm a game designer - creating mind-blowing concepts that will revolutionize the industry."
  bio13 = "I'm not a gamer - I'm a controller magician, pulling off impossible moves and wowing crowds with my skills."
  bio14 = "I don't need a life outside of video games - I have plenty of friends in my virtual worlds."
  bio15 = "I'm the kind of gamer who doesn't just play one game - I play them all, and I dominate them all."
  bio16 = "I'm not just a gamer, I'm a scientist - experimenting with new strategies and tactics to conquer every level."
  bio17 = "I don't just play video games - I immerse myself in them, living out my wildest fantasies in a world of pixels and code."
  bio18 = "I'm not a gamer, I'm a video game connoisseur - savoring the finest titles and critiquing the industry's latest offerings."
  bio19 = "I'm the kind of gamer who always chooses the weirdest character, just to see the looks on my opponents' faces when I win."
  bio20 = "I'm not just a gamer, I'm a strategist - analyzing every move and predicting every outcome to come out on top."
  bio21 = "I don't just play video games - I become them, taking on the role of hero or villain and changing the course of history."
  bio22 = "I'm not a gamer, I'm an artist - creating beautiful masterpieces with every game I play."
  bio23 = "I'm not just a gamer, I'm a speedrunner - beating games in record time and leaving other players in the dust."
  bio24 = "I'm not addicted to video games - I'm addicted to the thrill of victory and the agony of defeat."
  bio25 = "I'm the kind of gamer who doesn't just play games - I live them, dreaming about them every night and waking up ready to conquer the day."
  bio26 = "I'm not just a gamer, I'm a comedian - entertaining my opponents with witty one-liners and hilarious jokes while I dominate them."
  bio27 = "I'm not addicted to video games, I just have a deep, meaningful relationship with them that I could never have with a real person."
#BIO___________________________________________________________________

#USERS___________________________________________________________________
  puts 'Creating user'
  user1 = User.create(email: "ryan@ryan.fr", password: "123456", nickname: "Ryan", birthday: date1, city: "Nice", bio: bio1)
    f1 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678805352/ryan_h1nkz4.jpg")
    user1.photo.attach(io: f1, filename: "#{user1.nickname}.jpg", content_type: "image/jpg")
    user1.save
  user2 = User.create(email: "gui@gui.fr", password: "123456", nickname: "Guillaume", birthday: date2, city: "Nice", bio: bio2)
    f2 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678805822/gui_o7nvpr.jpg")
    user2.photo.attach(io: f2, filename: "#{user2.nickname}.jpg", content_type: "image/jpg")
    user2.save
  user3 = User.create(email: "email@email.ee", password: "123456", nickname: "Luca", birthday: date3, city: "Milan", bio: bio3)
    f3 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801770/homme13_tpge3w.jpg")
    user3.photo.attach(io: f3, filename: "#{user3.nickname}.jpg", content_type: "image/jpg")
    user3.save
  user4 = User.create(email: "email@email.ff", password: "123456", nickname: "Edouard", birthday: date4, city: "Venice", bio: bio4)
    f4 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801772/homme6_uyfyfk.jpg")
    user4.photo.attach(io: f4, filename: "#{user4.nickname}.jpg", content_type: "image/jpg")
    user4.save
  user5 = User.create(email: "email@email.gg", password: "123456", nickname: "Marius", birthday: date5, city: "Bucharest", bio: bio5)
    f5 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801771/homme7_tqpssw.jpg")
    user5.photo.attach(io: f5, filename: "#{user5.nickname}.jpg", content_type: "image/jpg")
    user5.save
  user6 = User.create(email: "email@email.hh", password: "123456", nickname: "Mark", birthday: date6, city: "Berlin", bio: bio6)
    f6 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801770/homme9_p1q6vn.jpg")
    user6.photo.attach(io: f6, filename: "#{user6.nickname}.jpg", content_type: "image/jpg")
    user6.save
  user7 = User.create(email: "email@email.ii", password: "123456", nickname: "Johnny", birthday: date7, city: "Paris", bio: bio7)
    f7 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801771/homme11_r9sqxw.jpg")
    user7.photo.attach(io: f7, filename: "#{user7.nickname}.jpg", content_type: "image/jpg")
    user7.save
  user8 = User.create(email: "email@email.jj", password: "123456", nickname: "Thor", birthday: date8, city: "Stockholm", bio: bio8)
    f8 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801770/homme15_jcilvu.jpg")
    user8.photo.attach(io: f8, filename: "#{user8.nickname}.jpg", content_type: "image/jpg")
    user8.save
  user9 = User.create(email: "email@email.kk", password: "123456", nickname: "John", birthday: date9, city: "Marseille", bio: bio9)
    f9 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801770/homme14_qay2hh.jpg")
    user9.photo.attach(io: f9, filename: "#{user9.nickname}.jpg", content_type: "image/jpg")
    user9.save
  user10 = User.create(email: "email@email.ll", password: "123456", nickname: "Dave", birthday: date10, city: "Udine", bio: bio10)
    f10 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801770/homme1_wcoise.jpg")
    user10.photo.attach(io: f10, filename: "#{user10.nickname}.jpg", content_type: "image/jpg")
    user10.save
  user11 = User.create(email: "email@email.mm", password: "123456", nickname: "Paul", birthday: date11, city: "Nantes", bio: bio11)
    f11 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801771/Homme5_imz6jv.jpg")
    user11.photo.attach(io: f11, filename: "#{user11.nickname}.jpg", content_type: "image/jpg")
    user11.save
  user12 = User.create(email: "email@email.nn", password: "123456", nickname: "Leon", birthday: date12, city: "London", bio: bio12)
    f12 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801771/Homme2_qm6oxu.jpg")
    user12.photo.attach(io: f12, filename: "#{user12.nickname}.jpg", content_type: "image/jpg")
    user12.save
  user13 = User.create(email: "email@email.oo", password: "123456", nickname: "Jules", birthday: date13, city: "Berlin", bio: bio13)
    f13 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801771/Homme4_iztaw5.jpg")
    user13.photo.attach(io: f13, filename: "#{user13.nickname}.jpg", content_type: "image/jpg")
    user13.save
  user14 = User.create(email: "email@email.pp", password: "123456", nickname: "Alex", birthday: date14, city: "Tokyo", bio: bio14)
    f14 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801772/homme12_vn7por.jpg")
    user14.photo.attach(io: f14, filename: "#{user14.nickname}.jpg", content_type: "image/jpg")
    user14.save
  user15 = User.create(email: "email@email.qq", password: "123456", nickname: "Bobby", birthday: date15, city: "Ventimiglia", bio: bio15)
    f15 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801772/homme8_wduyhe.jpg")
    user15.photo.attach(io: f15, filename: "#{user15.nickname}.jpg", content_type: "image/jpg")
    user15.save
  user16 = User.create(email: "elena@elena.fr", password: "123456", nickname: "Elena", birthday: date16, city: "Nice", bio: bio16)
    f16 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678805166/Elena_ait9ad.jpg")
    user16.photo.attach(io: f16, filename: "#{user16.nickname}.jpg", content_type: "image/jpg")
    user16.save
  user17 = User.create(email: "email@email.ss", password: "123456", nickname: "Patty", birthday: date17, city: "Oslo", bio: bio17)
    f17 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801764/femme20_mrcmmg.jpg")
    user17.photo.attach(io: f17, filename: "#{user17.nickname}.jpg", content_type: "image/jpg")
    user17.save
  user18 = User.create(email: "email@email.tt", password: "123456", nickname: "Mary", birthday: date18, city: "Madrid", bio: bio18)
    f18 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme25_fqexy1.jpg")
    user18.photo.attach(io: f18, filename: "#{user18.nickname}.jpg", content_type: "image/jpg")
    user18.save
  user19 = User.create(email: "email@email.uu", password: "123456", nickname: "Christiane", birthday: date19, city: "Grenada", bio: bio19)
    f19 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme24_wthvxw.jpg")
    user19.photo.attach(io: f19, filename: "#{user19.nickname}.jpg", content_type: "image/jpg")
    user19.save
  user20 = User.create(email: "email@email.vv", password: "123456", nickname: "Natalia", birthday: date20, city: "Dublin", bio: bio20)
    f20 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801762/femme23_jdgumv.jpg")
    user20.photo.attach(io: f20, filename: "#{user20.nickname}.jpg", content_type: "image/jpg")
    user20.save
  user21 = User.create(email: "email@email.ww", password: "123456", nickname: "Gabi", birthday: date21, city: "Galway", bio: bio21)
    f21 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme27_bo1iml.jpg")
    user21.photo.attach(io: f21, filename: "#{user21.nickname}.jpg", content_type: "image/jpg")
    user21.save
  user22 = User.create(email: "email@email.xx", password: "123456", nickname: "Ellie", birthday: date22, city: "Grasse", bio: bio22)
    f22 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme18_pmmgqw.jpg")
    user22.photo.attach(io: f22, filename: "#{user22.nickname}.jpg", content_type: "image/jpg")
    user22.save
  user23 = User.create(email: "email@email.yy", password: "123456", nickname: "Caroline", birthday: date23, city: "Casablanca", bio: bio23)
    f23 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme19_qlgswm.jpg")
    user23.photo.attach(io: f23, filename: "#{user23.nickname}.jpg", content_type: "image/jpg")
    user23.save
  user24 = User.create(email: "email@email.zz", password: "123456", nickname: "Gertrude", birthday: date24, city: "Nantes", bio: bio24)
    f24 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801764/femme17_ykg7cl.jpg")
    user24.photo.attach(io: f24, filename: "#{user24.nickname}.jpg", content_type: "image/jpg")
    user24.save
  user25 = User.create(email: "email@email.aa", password: "123456", nickname: "Sophie", birthday: date25, city: "Frejus", bio: bio25)
    f25 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme21_h3fbql.jpg")
    user25.photo.attach(io: f25, filename: "#{user25.nickname}.jpg", content_type: "image/jpg")
    user25.save
  user26 = User.create(email: "email@email.bb", password: "123456", nickname: "Magali", birthday: date26, city: "Cannes", bio: bio26)
    f26 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801763/femme26_pbybov.jpg")
    user26.photo.attach(io: f26, filename: "#{user26.nickname}.jpg", content_type: "image/jpg")
    user26.save
  user27 = User.create(email: "email@email.cc", password: "123456", nickname: "Anna", birthday: date27, city: "Cuers", bio: bio27)
    f27 = URI.open("https://res.cloudinary.com/dcd4fkkhk/image/upload/v1678801762/femme16_mrmmhl.jpg")
    user27.photo.attach(io: f27, filename: "#{user27.nickname}.jpg", content_type: "image/jpg")
    user27.save
  puts "Done #{User.count}"
#USERS___________________________________________________________________

#FRIENDSHIP___________________________________________________________________
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
#FRIENDSHIP___________________________________________________________________
Friendship.create(friend_id: user2.id, user_id: user26.id)
Friendship.create(friend_id: user2.id, user_id: user23.id)
Friendship.create(friend_id: user2.id, user_id: user13.id)
Friendship.create(friend_id: user2.id, user_id: user10.id)
Friendship.create(friend_id: user2.id, user_id: user1.id)

Friendship.create(friend_id: user16.id, user_id: user1.id)
Friendship.create(friend_id: user16.id, user_id: user9.id)
Friendship.create(friend_id: user16.id, user_id: user3.id)
Friendship.create(friend_id: user16.id, user_id: user12.id)
Friendship.create(friend_id: user16.id, user_id: user15.id)
Friendship.create(friend_id: user16.id, user_id: user6.id)
Friendship.create(friend_id: user16.id, user_id: user8.id)
Friendship.create(friend_id: user16.id, user_id: user20.id)




#USERGAMES___________________________________________________________________
  puts 'Creating USERGAMES'
  UserGame.create(user_id: user1.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
  UserGame.create(user_id: user2.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
  UserGame.create(user_id: user3.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
  UserGame.create(user_id: user4.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: 'Chill', console: 'PS4')
  UserGame.create(user_id: user5.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user6.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user7.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user8.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user9.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user10.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user20.id, game_id: 3328, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user20.id, game_id: 457048, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user20.id, game_id: 678989, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user20.id, game_id: 154231, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user19.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user12.id, game_id: 823549 , language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user12.id, game_id: 154231, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user12.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user16.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user15.id, game_id: 678989, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user15.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user15.id, game_id: 154231, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user15.id, game_id: 457048, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')

  UserGame.create(user_id: user27.id, game_id: 457048, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user27.id, game_id: 823549, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user27.id, game_id: 678989, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')
  UserGame.create(user_id: user27.id, game_id: 154231, language: 'French', level: 'Casual', mode: '1on1', mood: "Chill", console: 'PS4')


  puts "Done #{UserGame.count}"
#USERGAMES___________________________________________________________________

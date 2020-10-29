# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

NetflixShow.destroy_all
User.destroy_all
Review.destroy_all

PROFILE_IMAGE1 = File.open(File.join(
    Rails.root, '/public/images_seed/bruisedbananas.jpg'
  ))

show_1 = NetflixShow.create(title: 'The 100', genre: 'Science Fiction', description: 'Humans killing each other with nukes all over the planet!')
show_2 = NetflixShow.create(title: 'The Office', genre: 'Comedy')
show_3 = NetflixShow.create(title: 'Blood of Zeus', genre: 'Anime')
show_4 = NetflixShow.create(title: 'New Girl', genre: 'Comedy')
show_5 = NetflixShow.create(title: 'Avatar, the Last Airbender', genre: 'Cartoon')
show_6 = NetflixShow.create(title: 'Castlevania', genre: 'Anime')
show_7 = NetflixShow.create(title: 'Naruto', genre: 'Anime')
show_8 = NetflixShow.create(title: 'The Haunting of Hill House', genre: 'Horror')
show_9 = NetflixShow.create(title: 'All American', genre: 'Sports')
show_10 = NetflixShow.create(title: 'The Queens Gambit', genre: 'Drama')
show_11 = NetflixShow.create(title: 'Lock & Key', genre: 'Horror')
show_12 = NetflixShow.create(title: 'Van Helsing', genre: 'Horror')
show_13 = NetflixShow.create(title: 'Stranger Things', genre: 'Horror')
show_14 = NetflixShow.create(title: 'The Punisher', genre: 'Action')
show_15 = NetflixShow.create(title: 'Schitts Creek', genre: 'Comedy')
show_16 = NetflixShow.create(title: 'Daredevil', genre: 'Action')
show_17 = NetflixShow.create(title: 'Jessica Jones', genre: 'Drama')
show_18 = NetflixShow.create(title: 'Peaky Blinders', genre: 'Crime')
show_19 = NetflixShow.create(title: 'Luke Cage', genre: 'Drama')
show_20 = NetflixShow.create(title: 'The Witcher', genre: 'Fantasy')

user_1 = User.create(email: "first1@email.com", password: "123456", username: "Mad Ducks", first_name: "Maddox", last_name: "Grey")
user_2 = User.create(email: "first2@email.com", password: "123456", username: "Tedward", first_name: "Ted", last_name: "Francis")
user_3 = User.create(email: "first3@email.com", password: "123456", username: "Luby_Writes_Ruby", first_name: "Eric", last_name: "Luby")
user_4 = User.create(email: "first4@email.com", password: "123456", username: "SAMTHEDJ", first_name: "Sam", last_name: "Grieve")
user_5 = User.create(email: "first5@email.com", password: "123456", username: "Couch_Surfer_Bryan", first_name: "Bryan", last_name: "Alicea")

review_1 = Review.create(user: user_1, netflix_show: show_1, comment: "Why'd they even come down to Earth?", rating: 3)
review_2 = Review.create(user: user_2, netflix_show: show_1, comment: "Maybe if you paid attention Mad_Ducks you would know they were running out of oxygen", rating: 5)
review_3 = Review.create(user: user_3, netflix_show: show_2, comment: "Pretty much just Steven Carell ruining a business for multiple seasons", rating: 5)
review_4 = Review.create(user: user_4, netflix_show: show_2, comment: "Yo hit me up for better sound tracks next time", rating: 4)
review_5 = Review.create(user: user_5, netflix_show: show_2, comment: "I watch this show at every house I stay at while I'm traveling", rating: 5)
review_6 = Review.create(user: user_1, netflix_show: show_3, comment: "Stop trying to make Zeus a good guy. Dude is a total jerkface.", rating: 5)
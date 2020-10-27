# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

NetflixShow.destroy_all

show_1 = NetflixShow.create(title: 'The 100', genre: 'Science Fiction', description: 'Humans killing each other with nukes all over the planet!')
show_2 = NetflixShow.create(title: 'The Office', genre: 'Comedy')

user_1 = User.create(email: "first1@email.com", password: "123456", username: "Mad Ducks", first_name: "Maddox", last_name: "Grey")
user_2 = User.create(email: "first2@email.com", password: "123456", username: "Tedward", first_name: "Ted", last_name: "Francis")
user_3 = User.create(email: "first3@email.com", password: "123456", username: "Luby_Writes_Ruby", first_name: "Eric", last_name: "Luby")
user_4 = User.create(email: "first4@email.com", password: "123456", username: "SAMTHEDJ", first_name: "Sam", last_name: "Grieve")
user_5 = User.create(email: "first5@email.com", password: "123456", username: "Couch_Surfer_Bryan", first_name: "Bryan", last_name: "Alicea")

review_1 = Review.create(user: user_1, netflix_show: show_1, comment: "Why'd they even come down to Earth?", rating: 3, votes: 2)
review_2 = Review.create(user: user_2, netflix_show: show_1, comment: "Maybe if you paid attention Mad_Ducks you would know they were running out of oxygen", rating: 5, votes: 6)
review_3 = Review.create(user: user_3, netflix_show: show_2, comment: "Pretty much just Steven Carell ruining a business for multiple seasons", rating: 5, votes: 1)
review_4 = Review.create(user: user_4, netflix_show: show_2, comment: "Yo hit me up for better sound tracks next time", rating: 4, votes: -3)
review_5 = Review.create(user: user_5, netflix_show: show_2, comment: "I watch this show at every house I stay at while I'm traveling", rating: 5, votes: 0)
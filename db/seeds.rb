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
show_2 = NetflixShow.create(title: 'The Office', genre: 'Comedy', description: "I've never watched this show so I have no idea what it's about. Isn't it basically Parks & Rec?")
show_3 = NetflixShow.create(title: 'Blood of Zeus', genre: 'Anime', description: 'Same greek mythology told for the 50 millionth time but at least with good animation.')
show_4 = NetflixShow.create(title: 'New Girl', genre: 'Comedy', description: 'A girl that is new.')
show_5 = NetflixShow.create(title: 'Avatar, the Last Airbender', genre: 'Cartoon', description: 'If we rewatch this show enough times it will actully unmake the movie.')
show_6 = NetflixShow.create(title: 'Castlevania', genre: 'Anime', description: 'The best show ever made. #teamalucard')
show_7 = NetflixShow.create(title: 'Naruto', genre: 'Anime', description: 'I do not know what this show is. Eric added it.')
show_8 = NetflixShow.create(title: 'The Haunting of Hill House', genre: 'Horror', description: 'This family has issues. And ghosts.')
show_9 = NetflixShow.create(title: 'All American', genre: 'Sports', description: 'Something something sports.')
show_10 = NetflixShow.create(title: 'The Queens Gambit', genre: 'Drama', description: 'The latest movie Netflix is insisting you watch.')
show_11 = NetflixShow.create(title: 'Lock & Key', genre: 'Horror', description: 'Eh. Mostly does the graphic novel proud.')
show_12 = NetflixShow.create(title: 'Van Helsing', genre: 'Horror', description: 'Starts off really good then gets kind of boring.')
show_13 = NetflixShow.create(title: 'Stranger Things', genre: 'Horror', description: 'This is the best show ever made and I will fight you if you claim otherwise.')
show_14 = NetflixShow.create(title: 'The Punisher', genre: 'Action', description: 'Netflix surprised everyone by making a good show about a dumb character.')
show_15 = NetflixShow.create(title: 'Schitts Creek', genre: 'Comedy', description: 'Everyone keeps telling me that this show is funny but I do not believe them.')
show_16 = NetflixShow.create(title: 'Daredevil', genre: 'Action', description: 'Best hallway fight scenes ever. Yes even better than Old Boy.')
show_17 = NetflixShow.create(title: 'Jessica Jones', genre: 'Drama', description: 'Depressing but so good.')
show_18 = NetflixShow.create(title: 'Peaky Blinders', genre: 'Crime', description: "Don't know what this show is but Eric added it.")
show_19 = NetflixShow.create(title: 'Luke Cage', genre: 'Drama', description: 'Still bitter about no season 3.')
show_20 = NetflixShow.create(title: 'The Witcher', genre: 'Fantasy', description: 'Toss a coin to your witcher!')

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
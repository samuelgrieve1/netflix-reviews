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
show_11 = NetflixShow.create(title: 'Locke & Key', genre: 'Horror', description: 'Eh. Mostly does the graphic novel proud.')
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
review_6 = Review.create(user: user_1, netflix_show: show_3, comment: "Stop trying to make Zeus a good guy. Dude is a total jerkface.", rating: 3)
review_7 = Review.create(user: user_4, netflix_show: show_4, comment: "I don't like this 'new girl' I miss the old one", rating: 1)
review_8 = Review.create(user: user_2, netflix_show: show_5, comment: "I wish I were a bender", rating: 2)
review_9 = Review.create(user: user_1, netflix_show: show_6, comment: "Yo if you love dope animes and vampires this is your gig! So much action but definitely not for the faint of heart. The animations in this show are some of the best! Definitely Fangs secret obsession", rating: 5)
review_10 = Review.create(user: user_5, netflix_show: show_7, comment: "I totally ship Naruto and Sakura", rating: 4)
review_11 = Review.create(user: user_4, netflix_show: show_8, comment: "this was SOOooOooOOo scary", rating: 5)
review_12 = Review.create(user: user_3, netflix_show: show_9, comment: "I did pushups the whole time where watching", rating: 4)
review_13 = Review.create(user: user_2, netflix_show: show_10, comment: "I am a secret grandmaster of chess myself", rating: 3)
review_14 = Review.create(user: user_3, netflix_show: show_11, comment: "This show was so back they should have locked and thrown away the key on the original script", rating: 1)
review_15 = Review.create(user: user_1, netflix_show: show_12, comment: "Fang hates this show", rating: 1)
review_16 = Review.create(user: user_5, netflix_show: show_13, comment: "A bunch of school kids not attending school so they can go fight monsters", rating: 3)
review_17 = Review.create(user: user_4, netflix_show: show_14, comment: "This is like the comic version of John Wick except he has a lot more reason to be angry than his dog dying", rating: 4)
review_18 = Review.create(user: user_3, netflix_show: show_15, comment: "This show had potential but it the mother ruined it for me", rating: 2)
review_19 = Review.create(user: user_5, netflix_show: show_16, comment: "This show was super dope", rating: 5)
review_20 = Review.create(user: user_3, netflix_show: show_17, comment: "The baddy in this show was kinda intreguing", rating: 4)
review_21 = Review.create(user: user_2, netflix_show: show_18, comment: "Eric Luby recommended this show for me to watch but I honestly couldn't understand anything they were saying", rating: 3)
review_22 = Review.create(user: user_1, netflix_show: show_19, comment: "So much better than Jessica Jones!", rating: 5)
review_23 = Review.create(user: user_1, netflix_show: show_20, comment: "The fighting was pretty unrealistic", rating: 1)
review_24 = Review.create(user: user_2, netflix_show: show_4, comment: "OMG this show is my JAM", rating: 5)
review_25 = Review.create(user: user_3, netflix_show: show_5, comment: "Fire bending seems like the lamest of the bendings", rating: 3)
review_26 = Review.create(user: user_4, netflix_show: show_4, comment: "Nick is actually me IRL", rating: 2)
review_27 = Review.create(user: user_5, netflix_show: show_6, comment: "My roommate blasts this show while I try to sleep", rating: 1)
review_28 = Review.create(user: user_3, netflix_show: show_7, comment: "A rollercoaster of emotions. I wish I could rank this show higher. This has to be one of the most epic animes available on Netflix. Talk about a story of overcoming diversity, Naruto was looked down upon by his entire village but constantly strives to be the best Shinobi in the world. 10/5 will watch through at least 3 more times.", rating: 5)
review_29 = Review.create(user: user_2, netflix_show: show_9, comment: "I get so hyped watching them play football!", rating: 4)
review_30 = Review.create(user: user_1, netflix_show: show_10, comment: "pawn to d5", rating: 3)
review_31 = Review.create(user: user_3, netflix_show: show_3, comment: "Netflix actually did a really god job with this original anime. The animations and story are compeling and draw in your attention", rating: 5)
review_32 = Review.create(user: user_3, netflix_show: show_9, comment: "Watching 'American' is like a class reunion: Comforting and nostalgic, but with a few surprises tucked up its sleeve. It's the kind of show that's easy to cheer for, even if its football team isn't that great yet.", rating: 4)
review_33 = Review.create(user: user_2, netflix_show: show_10, comment: "This series turns out be 2020's true winner. Truly an exemplary series showcasing one of the oldest and most intellectual games in our history and the show truly pays an homage to this breathtaking game. Most of us have grown up on chess, moving pawns across the board or watching Gary Kasparov and Vishwanathan Anand, but a little girl taking center stage in a male dominated game while conquering her vices makes this show's each scene worthy of view time.", rating: 5)
review_34 = Review.create(user: user_3, netflix_show: show_11, comment: "For a show that deals so intently with loss - of loved ones, of innocence - Locke & Key is a surprisingly rewarding endeavor.", rating: 4)
review_35 = Review.create(user: user_5, netflix_show: show_13, comment: "Does this girl eat anything but Eggos?", rating: 4)
review_36 = Review.create(user: user_4, netflix_show: show_14, comment: "The jail scene was OFF THE HOOK! The action is choreographed so well", rating: 5)
review_37 = Review.create(user: user_3, netflix_show: show_15, comment: "On its was down Shits Creek", rating: 1)
review_38 = Review.create(user: user_5, netflix_show: show_16, comment: "Who knew a blind man could fight so well?", rating: 5)
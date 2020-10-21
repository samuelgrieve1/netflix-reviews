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
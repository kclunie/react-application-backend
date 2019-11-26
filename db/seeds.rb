# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trip1 = Trip.create(name: 'England/Ireland Trip', date: Date.new(2017, 10, 01))

city1 = City.create(trip_id: 1, location: 'London, England', hotel: 'Palace Inn', restaurants: 'Elizabeths, Royal Kitchen, Carriage House (my favorite)', activities: 'London Eye, Tower Bridge, Buckingham Palace')

city2 = City.create(trip_id: 1, location: 'Dublin, Ireland', hotel: 'The Dubliner', restaurants: 'Luckys, Top of the Mornin', activities: 'Guiness Storehouse, St. Patricks Cathedral')
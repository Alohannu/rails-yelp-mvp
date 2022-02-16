# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
sora = { name: 'Sora', address: 'Sonntagstraße 26, 10245 Berlin', category: 'japanese' }
cento_passi = { name: 'Cento Passi Vino & Specialita', address: 'Krossener Str. 36, 10245 Berlin', category: 'italian' }
secret_garden = { name: 'Secret Garden', address: 'Warschauer Str. 33, 10243 Berlin', category: 'japanese' }
[dishoom, pizza_east, sora, cento_passi, secret_garden].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

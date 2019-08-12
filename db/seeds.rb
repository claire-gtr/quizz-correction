# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting previous songs..."
Song.destroy_all
puts "Creating songs..."
  10.times do
    song = Song.create(title: Faker::BossaNova.song, year: Faker::Date.backward(days: 10000).year, category: "Bossa Nova")
    puts "#{song.title} created ! "
  end
puts "Songs database created"

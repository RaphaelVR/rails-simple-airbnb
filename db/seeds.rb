# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "Cleaning database..."
# Flats.destroy_all

puts "Creating restaurants..."
5.times do
  Flat.create!(
    name: Faker::BossaNova.song,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_night: rand(50..200),
    number_of_guests: rand(1..5)
  )
end
puts "Finished!"

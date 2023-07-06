# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning flat database...'
Flat.destroy_all

puts 'Creating flats...'

10.times do
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 4),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 50, to: 150),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    image_url: Faker::LoremFlickr.image(search_terms: ['house'], match_all: true)
  )
end
puts 'Finished!'

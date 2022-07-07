# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
4.times do
  Flat.create(address: Faker::Address.street_address, name:Faker::Name.name,
    description:Faker::Lorem.paragraph(sentence_count: 7), number_of_guests: (1..6).to_a.sample,
  price_per_night: (30..100).to_a.sample)
end

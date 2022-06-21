# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Petit chalet à la montagne',
  address: 'Les Carroz',
  description: 'Le plus beau châlet de la station, au pied des pistes',
  price_per_night: 120,
  number_of_guests: 4
)

Flat.create!(
  name: 'Une payotte au bord de la mer',
  address: 'Porquerolles',
  description: 'Jolie payotte vue sur mer',
  price_per_night: 90,
  number_of_guests: 2
)

puts "Seed created !"

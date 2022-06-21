require 'faker'
require "open-uri"

Flat.destroy_all
puts "all flats destroyed"

User.destroy_all
puts "all users destroyed"

user1 = User.create!(email: 'test@test.com', username: 'Julie', password: 'azerty')
user2 = User.create!(email: 'test2@test.com', username: 'Momo', password: 'azerty')
user3 = User.create!(email: 'test3@test.com', username: 'Enzo', password: 'azerty')
user4 = User.create!(email: 'test4@test.com', username: 'Gaby', password: 'azerty')

puts "Users created !"

flat1 = Flat.new(
  user: user1,
  name: "Grand Loft",
  address: "10 rue Oberkampf Paris",
  description: "Magnifique loft très lumineux",
  price_per_night: 150,
  number_of_guests: 4
)
flat1.photo.attach(
  io: URI.open('https://a0.muscache.com/im/pictures/64d85e0e-bab6-4abb-a604-8465f9a436b3.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg'
  )
flat1.save!


puts "Flats created !"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Reservation.destroy_all
Listing.destroy_all
City.destroy_all
require 'faker'

#Utilisateurs

20.times do
   User.create(
   name: Faker::Name.name,
   email: Faker::Internet.email,
   phone: Faker::PhoneNumber.phone,
   description: Faker::Quote.matz
   )
end 

#villes

10.times do |index|
 City.create(
   name: Faker::Address.city,
   code: Faker::Address.zip_code
 )
end

#Listing

50.times do
    Accommodation.create(
    beds: rand(1..8),
    price: rand(1..150),
    description: Faker::Quote.matz,
    wifi: Faker::Boolean.boolean,
    welcome_message: "Bienvenue, rire avant d'entrer!",
    city: City.all.sample,
    admin: User.all.sample
 )
end

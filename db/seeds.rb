# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "distroying"
Cat.destroy_all
User.destroy_all
Booking.destroy_all
BookingReview.destroy_all

puts "creating users"
users = []
3.times do
  users.push(User.create!(
    email: Faker::Internet.email,
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password,
    address: ["Paris", "Bordeaux", "Lyon", "Toulouse", "Lille", "Marseille", "Brest", "Strasbourg", "Cucuron"].sample,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Lorem.paragraph
  ))
end

puts "creating cats"
cats = []
5.times do
  cats.push(Cat.create!(
  name: Faker::Creature::Cat.name,
  age: rand(1..10),
  gender: ["male", "femelle"].sample,
  neutered: ["true", "false"].sample == "true",
  description: Faker::Lorem.paragraph,
  color: ["brun", "blanc", "noir", "roux", "isabelle"].sample,
  diet: ["croquette", "pâté", "vegan"].sample,
  hair_length: ["court", "medium", "long"].sample,
  breed: Faker::Creature::Cat.breed,
  price_per_half_day: rand(10..50),
  city: ["Paris", "Bordeaux", "Lyon", "Toulouse", "Lille", "Marseille", "Brest", "Strasbourg", "Cucuron"].sample,
  tag: ["calin", "calme", "ronronneur", "espiègle", "gratouilleur", "bavard"].sample,
  user: users.sample
  ))
end

puts "creating bookings"
bookings = []
3.times do
  bookings.push(Booking.create!(
  user: users.sample,
  cat: cats.sample,
  start_date: Faker::Date.between(from: '2021-02-16', to: '2021-03-25'),
  number_of_half_days: rand(1..5)
  ))
end

puts "creating bookings_reviews"
3.times do
  BookingReview.create!(
  booking: bookings.sample,
  cat_comment: Faker::Lorem.sentence,
  cat_rating: rand(1..5),
  owner_comment: Faker::Lorem.sentence,
  owner_rating: rand(1..5)
  )
end


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

puts "creating cats"
5.times do
  Cat.create!(
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
  user_id: rand(1..3)
  )
end

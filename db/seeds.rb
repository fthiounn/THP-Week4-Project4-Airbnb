# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


#initialisation du nombre de variables a seed
nbcity = 20
nbdog = 500
nbsitters = 200
nbstroll = 1000
nbdogstrolls = 2000
dogstrolls = []
strolls = []
dogsitters = []
cities = []
dogs = []

#Seed des 20 villes
nbcity.times do |x|
  city = City.create(city_name: Faker::Address.city)
  cities << city
  puts "Seeding City nb#{x}"
end
#Seed des  dogs
nbdog.times do |x|
	dog = Dog.create(
		name: Faker::Name.first_name, 
		city_id: cities[rand(0..nbcity-1)].id)
	dogs << dog
	puts "Seeding Dog nb#{x}"
end
#Seed des dogsitters
nbsitters.times do |x|
	sitter = DogSitter.create(
		name: Faker::Name.name, 
		city_id: cities[rand(0..nbcity-1)].id)
	dogsitters << sitter
	puts "Seeding Dogsitter nb#{x}"
end
#seed des Strolls
t1 = Time.parse("2019-10-23 14:40:34")
t2 = Time.parse("2021-01-01 00:00:00")
nbstroll.times do |x|
	stroll = Stroll.create(
		date: rand(t1..t2),
		dog_sitter_id: dogsitters[rand(0..nbsitters-1)].id, 
		city_id: cities[rand(0..nbcity-1)].id)
	strolls << stroll
	puts "Seeding Stroll nb#{x}"
end
#seeding des dogstrolls
nbdogstrolls.times do |x|
	dogstroll = DogStroll.create(
		stroll_id: strolls[rand(0..nbstroll-1)].id,
		dog_id: dogs[rand(0..nbdog-1)].id)
	dogstrolls << dogstroll
	puts "Seeding dogstroll nb#{x}"
end
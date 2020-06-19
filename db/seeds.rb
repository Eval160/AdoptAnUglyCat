# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "delete all purchases"
Purchase.delete_all
puts "delete all cats"
Cat.delete_all

puts "Create 15 cats"

15.times do
  name = Faker::FunnyName.name
  description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua."
  Cat.create!(name: name, description: description)
end

puts "Finish"

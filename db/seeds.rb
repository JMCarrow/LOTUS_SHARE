# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Plant.destroy_all
User.destroy_all
puts "Cleaning Database!"

mimi = User.create(first_name: "Mimi", last_name: "Dou", email: "test1@gmail.com", password: "123456")
puts "Created #{mimi.first_name}"

bob = User.create(first_name: "Bob", last_name: "Feelgood", email: "test2@gmail.com", password: "123456")
puts "Created #{bob.first_name}"

sara = User.create(first_name: "Sara", last_name: "Clark", email: "test3@gmail.com", password: "123456")
puts "Created #{sara.first_name}"

puts "Creating plants..."

rose = Plant.create(name: "Rose from Paris", size: "Small", environment: "Indoor", user:User.all.sample)
puts "Created #{rose.name}"

pine_tree = Plant.create(name: 'Pine Tree', size: "Large", environment: "Outdoor", user: User.all.sample)
puts "Created #{pine_tree.name}"

coral = Plant.create(name: "Coral", size: "Medium", environment: "Indoor", user: User.all.sample)
puts "Created #{coral.name}"

puts "Finished!"

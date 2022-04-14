# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Reservation.destroy_all
Plant.destroy_all
User.destroy_all
puts "Cleaning Database!"

mimi = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863403/pjajeppphezmcuta1n0q.jpg')
user = User.create(first_name: "Mimi", last_name: "Dou", email: "test1@gmail.com", password: "123456")
user.photo.attach(io: mimi, filename: 'mimi.png', content_type: 'image/png')
puts "Created #{user.first_name}"

bob = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863546/situphgz4uta5zfemnwn.jpg')
user = User.create(first_name: "Bob", last_name: "Feelgood", email: "test2@gmail.com", password: "123456")
user.photo.attach(io: bob, filename: 'bob.png', content_type: 'image/png')
puts "Created #{user.first_name}"

sara = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863641/vuv45dhhxrd6zhpuatwt.jpg')
user = User.create(first_name: "Sara", last_name: "Clark", email: "test3@gmail.com", password: "123456")
user.photo.attach(io: sara, filename: 'sara.png', content_type: 'image/png')
puts "Created #{user.first_name}"

puts "Creating plants..."

rose = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649852136/igw5gwys4hsmmqwg08rj.jpg')
plant = Plant.create(name: "Rose from Paris", size: "Small", environment: "Indoor", user:User.all.sample)
plant.photo.attach(io: rose, filename: 'rose.png', content_type: 'image/png')
puts "Created #{plant.name}"

pine_tree = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863082/katbioxv8blpjm45phsj.jpg')
plant = Plant.create(name: 'Pine Tree', size: "Large", environment: "Outdoor", user: User.all.sample)
plant.photo.attach(io: pine_tree, filename: 'pine-tree.png', content_type: 'image/png')
puts "Created #{plant.name}"

hanging_fern = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649853160/m4vukrbt7opuqn3lgfzv.jpg')
plant = Plant.create(name: "Hangning Fern", size: "Medium", environment: "Outdoor", user: User.all.sample)
plant.photo.attach(io: hanging_fern, filename: 'hanging-fern.png', content_type: 'image/png')
puts "Created #{plant.name}"

caladium = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864904/uyumx3c4jkdczoc1xedq.jpg')
plant = Plant.create(name: "Caladium Tuber", size: "Small", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: caladium, filename: 'caladium.png', content_type: 'image/png')
puts "Created #{plant.name}"

bop = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864841/ni9iaojdqf6d8xguiyrx.jpg')
plant = Plant.create(name: "Bird of Paradise", size: "Large", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: bop, filename: 'bop.png', content_type: 'image/png')
puts "Created #{plant.name}"

rubber_tree = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864788/co3ijavwwuz3lpvphdgo.jpg')
plant = Plant.create(name: "Rubber Tree", size: "Medium", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: rubber_tree, filename: 'rubber_tree.png', content_type: 'image/png')
puts "Created #{plant.name}"

bonsai = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864753/ijkvg0ozdzsc1cirxmud.jpg')
plant = Plant.create(name: "Bonsai Tree", size: "Large", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: bonsai, filename: 'bonsai_tree.png', content_type: 'image/png')
puts "Created #{plant.name}"

hk = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864725/gcogwtyviim5bgucftmh.jpg')
plant = Plant.create(name: "Hoya Kerrii", size: "Small", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: hk, filename: 'hoya-kerrii.png', content_type: 'image/png')
puts "Created #{plant.name}"

pothos = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864687/cqlrteyigdvprfy1t1yn.jpg')
plant = Plant.create(name: "Pothos", size: "Medium", environment: "Outdoor", user: User.all.sample)
plant.photo.attach(io: pothos, filename: 'pothos.png', content_type: 'image/png')
puts "Created #{plant.name}"

croton = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864602/ipytofq26u4xbuh7jin9.jpg')
plant = Plant.create(name: "Croton", size: "Small", environment: "Indoor", user: User.all.sample)
plant.photo.attach(io: croton, filename: 'croton.png', content_type: 'image/png')
puts "Created #{plant.name}"

puts "Finished!"

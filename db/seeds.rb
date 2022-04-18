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

puts "Creating users..."

mimi = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863403/pjajeppphezmcuta1n0q.jpg')
user = User.new(first_name: "Mimi", last_name: "Dou", email: "test1@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: mimi, filename: 'mimi.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

bob = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863546/situphgz4uta5zfemnwn.jpg')
user = User.new(first_name: "Bob", last_name: "Feelgood", email: "test2@gmail.com", password: "123456", professional: false, healer: true)
user.photo.attach(io: bob, filename: 'bob.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

sara = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863641/vuv45dhhxrd6zhpuatwt.jpg')
user = User.new(first_name: "Sara", last_name: "Clark", email: "test3@gmail.com", password: "123456",  professional: true, healer: true, pro_name: "Rainbow Emporium")
user.photo.attach(io: sara, filename: 'sara.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

puts "Creating plants..."

alstromeria = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649948453/b78iw0b57hl7rlbbhxod.jpg')
plant = Plant.create(name: "Alstroemeria Paola", size: "Small", environment: "Outdoor", species: "Alstroemeria Princess Paola", height: "20cm - 30cm", rent_price: 4, sun_exposure: "Indirect", organic: true, flowering: true, flower_color: "Multi", availabe_for_purchase: false, buy_price: nil, address: "123 Memory Lane, 93170 Paris", description: "'Princess Paola' _ 'Princess Paola', a dwarf, long flowering variety, has lance-shaped leaves and apricot and pale pink flowers with yellow centres in summer.", watering: "Water 0.5L each week and keep soil moise but well drained.", care: "Gaze upon the longevity of the flowers with adoration.", user: User.all.sample)
plant.photo.attach(io: alstromeria, filename: 'alstromeria.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

hydrangeas = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649948331/fcfncm3eudowe4eho3yk.jpg')
plant = Plant.create(name: "Limelight Hydrangea", size: "Large", environment: "Outdoor", species: "Hydrangea paniculata", height: "100cm+", rent_price: 10, sun_exposure: "Direct", organic: true, flowering: true, flower_color: "White", availabe_for_purchase: false, buy_price: nil, address: "1 Rue de Rivoli, 75001 Paris", description: "This has very large flowers that are held upright by strong stems.", watering: "Water 1L each week", care: "Protect from any strong winds.", user: User.all.sample)
plant.photo.attach(io: hydrangeas, filename: 'hydrangeas.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

rose = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649852136/igw5gwys4hsmmqwg08rj.jpg')
plant = Plant.new(name: "Rose from Paris", size: "Small", environment: "Indoor", species: "Medinilla magnifica", height: "30cm - 60cm", rent_price: 5, sun_exposure: "Indirect", organic: false, flowering: true, flower_color: "Pink", availabe_for_purchase: false, buy_price: nil, address: "55 Rue du Faubourg Saint-Honoré, 75008 Paris", description: "Delicate rose flower perfect for to decorate your table while guests are over!", watering: "Water 100ml each week", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: rose, filename: 'rose.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

pine_tree = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863082/katbioxv8blpjm45phsj.jpg')
plant = Plant.new(name: 'Pine Tree', size: "Large", environment: "Outdoor", species: "Pinus halepensis", height: "100cm+", rent_price: 10, sun_exposure: "Direct", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "16 Rue du Repos, 75020 Paris", description: "Nice pine to brighten and freshen your space!", watering: "Water 200ml each week", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: pine_tree, filename: 'pine-tree.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

hanging_fern = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649853160/m4vukrbt7opuqn3lgfzv.jpg')
plant = Plant.new(name: "Hanging Fern", size: "Medium", environment: "Outdoor", species: "Nephrolepis exaltata", height: "30cm - 60cm", rent_price: 4, sun_exposure: "Direct", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "9 Rue Bouchut, 75015 Paris", description: "Lovely fern to bring a pop of color into your life!", watering: "Water 100ml every other week", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: hanging_fern, filename: 'hanging-fern.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

caladium = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864904/uyumx3c4jkdczoc1xedq.jpg')
plant = Plant.new(name: "Caladium Tuber", size: "Small", environment: "Indoor", species: "Caladium bicolor", height: "20cm - 30cm", rent_price: 3, sun_exposure: "Indirect", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "42 Rue Blomet, 75015 Paris", description: "Nice white leaves with a splash of red - wow your guests!", watering: "Water 50ml every week", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: caladium, filename: 'caladium.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

bop = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864841/ni9iaojdqf6d8xguiyrx.jpg')
plant = Plant.new(name: "Bird of Paradise", size: "Large", environment: "Indoor", species: "Strelitzia nicolai", height: "60cm - 100cm", rent_price: 6, sun_exposure: "Indirect", organic: false, flowering: true, flower_color: "Orange", availabe_for_purchase: false, buy_price: nil, address: "1 Av. du Colonel Henri Rol-Tanguy, 75014 Paris", description: "Tall plant with very beautiful orange flowers!", watering: "Water 0.5L every week", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: bop, filename: 'bop.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

rubber_tree = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864788/co3ijavwwuz3lpvphdgo.jpg')
plant = Plant.new(name: "Rubber Tree", size: "Medium", environment: "Indoor", species: "Hevea brasiliensis", height: "30cm - 60cm", rent_price: 2, sun_exposure: "Direct", organic: false, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "168 Av. de Choisy, 75013 Paris", description: "Add a jungle-liek aspect to your party!", watering: "Spritz leaves daily with room-temperature water", care: "Nothing to do but enjoy!", user: User.all.sample)
plant.photo.attach(io: rubber_tree, filename: 'rubber_tree.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

bonsai = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864753/ijkvg0ozdzsc1cirxmud.jpg')
plant = Plant.new(name: "Bonsai Tree", size: "Large", environment: "Indoor", species: "Jacaranda Mimosifolia", height: "100cm+", rent_price: 6, sun_exposure: "Direct", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "36 Rue Geoffroy-Saint-Hilaire, 75005 Paris", description: "Large tree provides an asiantic feel to any gathering!", watering: "Watering 0.5L once every two weeks.", care: "Whisper kind words in her leaves every hour for optimum beauty.", user: User.all.sample)
plant.photo.attach(io: bonsai, filename: 'bonsai_tree.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

hk = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864725/gcogwtyviim5bgucftmh.jpg')
plant = Plant.new(name: "Hoya Kerrii", size: "Small", environment: "Indoor", species: "Acokanthera obovata var. kerrii", height: "10cm - 20cm", rent_price: 1, sun_exposure: "Indirect", organic: false, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "1 Rue des Fossés Saint-Bernard, 75005 Paris", description: "Heart-shaped plant will remind you to take a moment of mindfulness with every glance.", watering: "Watering 50ml once every two weeks.", care: "Nothing to do here!", user: User.all.sample)
plant.photo.attach(io: hk, filename: 'hoya-kerrii.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

pothos = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864687/cqlrteyigdvprfy1t1yn.jpg')
plant = Plant.new(name: "Pothos", size: "Medium", environment: "Outdoor", species: "Epipremnum aureum", height: "20cm - 30cm", rent_price: 2, sun_exposure: "Direct", organic: false, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "5 Rue de Thorigny, 75003 Paris", description: "Lovely and vibrant leaves brigthen up any space!", watering: "Water 200ml daily.", care: "Nothing to do here!", user: User.all.sample)
plant.photo.attach(io: pothos, filename: 'pothos.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

croton = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864602/ipytofq26u4xbuh7jin9.jpg')
plant = Plant.new(name: "Croton", size: "Small", environment: "Indoor", species: "Codiaeum variegatum", height: "10cm - 20cm", rent_price: 1, sun_exposure: "Indirect", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: nil, address: "9 Cr des Petites Écuries, 75010 Paris", description: "Perfect plant with green and orange leaves to bring an accent of color to any apartment!", watering: "Water 50ml once per week.", care: "Nothing to do here!", user: User.all.sample)
plant.photo.attach(io: croton, filename: 'croton.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

puts "Finished!"

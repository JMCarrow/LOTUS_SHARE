# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'

Reservation.destroy_all
Plant.destroy_all
User.destroy_all
puts "Cleaning Database!"

puts "Creating users..."

mimi = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650283602/cpxlg3rjceanrvjudpak.jpg')
user = User.new(first_name: "Mimi", last_name: "Dou", email: "mimi@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: mimi, filename: 'mimi.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

bob = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650358877/v0w5kst9x4hjkiu1gi8j.jpg')
user_bob = User.new(first_name: "Bobby", last_name: "Feelgood", email: "bobby@gmail.com", password: "123456", professional: false, healer: true, bio: "Uh oh. Did you come home to a less-than-happy plant? Don't panic just yet! Your plant still has some hope before it meets its untimely demise. Instead, know that a plant's health fluctuates if it's getting too much or too little of something. Most solutions to your plant's health issues are easy fixes that restore it to its natural balance. For example, a plant getting too much sun simply needs to find a new home in a shadier spot. Still lost for what to do to save your wilting friends? Drop your plant off with me and I will breathe new life into your green friends!")
user_bob.photo.attach(io: bob, filename: 'bob.png', content_type: 'image/png')
user_bob.save
puts "Created #{user_bob.first_name}"

sara = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649863641/vuv45dhhxrd6zhpuatwt.jpg')
user_sara = User.new(first_name: "Sara", last_name: "Clark", email: "sara@gmail.com", password: "123456",  professional: true, healer: true, pro_name: "Rainbow Emporium", bio: "You enter this space and you know one thing: You will not leave the space empty-handed. Too many temptations lure in every corner: richly patterned Philodendrons, colourful Fittonias, bushy Fiddle Figs, elegant Strelitzia, juicy succulents, and prickly cacti are lined up from one end to the other. Additionally, the beautiful ceramics planters are a decorator's dream. You can actually play mix & match. So this shop is a must visit if you come to Paris. Because let's be honest and put it this way: It is OUR kind of candy store!")
user_sara.photo.attach(io: sara, filename: 'sara.png', content_type: 'image/png')
user_sara.save
puts "Created #{user_sara.first_name}"

douglas = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650283926/ddbzxug7mj8puck4odsd.jpg')
user = User.new(first_name: "Douglas", last_name: "Woodrow", email: "douglas@gmail.com", password: "123456",  professional: false, healer: false, pro_name: nil)
user.photo.attach(io: douglas, filename: 'douglas.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

janeth = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650284183/gmysu8b7xmbfge0xfbei.jpg')
user_janeth = User.new(first_name: "Janeth", last_name: "Strickland", email: "janeth@gmail.com", password: "123456",  professional: true, healer: true, pro_name: "Artisanal Floral Boutique", minority_owned: true, bio: "Once you surpassed the first moment of awe while looking at all the plants, you might notice how bright and contemporary the space looks like. White and pastel hues, terracotta colored doors, wooden accents, pale pink walls - for those familiar with the French design scene the conclusion lies on the hand: We invite you to enjoy a cup of tea while you are pondering about how many plants you can actually juggle through the streets of Paris!.")
user_janeth.photo.attach(io: janeth, filename: 'douglas.png', content_type: 'image/png')
user_janeth.save
puts "Created #{user_janeth.first_name}"

cameron = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650284463/kbvhwvpjlo9lzaewyisp.jpg')
user_cameron = User.new(first_name: "Cameron", last_name: "Lambert", email: "cameron@gmail.com", password: "123456",  professional: true, healer: true, pro_name: "Your Queer Corner Florist", minority_owned: true, bio: "Installed since one year and a half, this highly instagramable vegetal concept-store puts the spotlight on seasonal plants, cultivated in the respect of the environment. I will 'leaf' you with these beautiful options to welcome into your abode! You will enjoy it and feel invigorated, inspired, and - we do believe - you will bring  a little new green friend back home.")
user_cameron.photo.attach(io: cameron, filename: 'cameron.png', content_type: 'image/png')
user_cameron.save
puts "Created #{user_cameron.first_name}"

rikesh = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650439465/fgmnrubm6cxbc2uqtqrm.jpg')
user = User.new(first_name: "Rikesh", last_name: "Jadhav", email: "test7@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: rikesh, filename: 'rikesh.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

gustav = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650439622/bvkvkfdcfifla1bfrawz.jpg')
user = User.new(first_name: "Gustav", last_name: "Navarro", email: "test8@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: gustav, filename: 'gustav.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

elena = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650440071/sehry8pkj1zb5q89l7jw.jpg')
user = User.new(first_name: "Elena", last_name: "Shevchenko", email: "test9@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: elena, filename: 'elena.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

mohamed = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650440440/cxr4tj7tapwm28srgqwq.jpg')
user = User.new(first_name: "Mohamed", last_name: "Ahmed", email: "test10@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: mohamed, filename: 'mohamed.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

elonzo = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650441372/zqihtjzc5l7uhddjkxa4.jpg')
user = User.new(first_name: "Elonzo", last_name: "Bitton", email: "test11@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: elonzo, filename: 'elonzo.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

tamar = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650442092/fnbghjn2joyzxbkybzhb.jpg')
user = User.new(first_name: "Tamar", last_name: "Cohen", email: "test12@gmail.com", password: "123456", professional: false, healer: false)
user.photo.attach(io: tamar, filename: 'tamar.png', content_type: 'image/png')
user.save
puts "Created #{user.first_name}"

# Faker adds 50 more users

user_url = "https://randomuser.me/api/?results=50"
users_data = JSON.parse(open(user_url).read)
bio = ["Having an event and here to rent some plants to impress my friends!", "I own an Airbnb and am looking to rent plants on a monthly basis to decorate the space!", "I am en event planner and looking to rent plants for very specific events I throw for clients!", "I am a real estate agent and am in needs of plants for staging units for sale!"]

puts 'Creating 50 more users...'

users_data['results'].each do |user_data|
  user = User.new(
    first_name: user_data['name']['first'],
    last_name: user_data['name']['last'],
    email: user_data['email'],
    # address: address.sample + ", France",
    password: '123456',
    professional: false,
    healer: false,
    bio: bio.sample
  )
  file = URI.open("#{user_data['picture']['large']}")
  user.photo.attach(io: file, filename: "#{user.first_name}.png", content_type: 'image/png')
  user.save!
  puts "Created #{user.first_name}"
end
puts 'Finished!'

puts "Creating plants..."

hanging_fern = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649853160/m4vukrbt7opuqn3lgfzv.jpg')
plant_fern = Plant.new(name: "Hanging Fern", size: "Medium", environment: "Outdoor", species: "Nephrolepis exaltata", height: "30cm - 60cm", rent_price: 4, sun_exposure: "Direct", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: 35, address: "9 Rue Bouchut, 75015 Paris", description: "Lovely fern to bring a pop of color into your life!", watering: "Water 100ml every other week", care: "Nothing to do but enjoy!", user: user_sara)
plant_fern.photo.attach(io: hanging_fern, filename: 'hanging-fern.png', content_type: 'image/png')
plant_fern.save
puts "Created #{plant_fern.name}"

alstromeria = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649948453/b78iw0b57hl7rlbbhxod.jpg')
plant = Plant.create(name: "Alstroemeria Paola", size: "Small", environment: "Outdoor", species: "Alstroemeria Princess Paola", height: "20cm - 30cm", rent_price: 4, sun_exposure: "Indirect", organic: true, flowering: true, flower_color: "Multi", availabe_for_purchase: false, buy_price: 35, address: "123 Memory Lane, 93170 Paris", description: "'Princess Paola' _ 'Princess Paola', a dwarf, long flowering variety, has lance-shaped leaves and apricot and pale pink flowers with yellow centres in summer.", watering: "Water 0.5L each week and keep soil moise but well drained.", care: "Gaze upon the longevity of the flowers with adoration.", user: user_janeth)
plant.photo.attach(io: alstromeria, filename: 'alstromeria.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

begonia = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650356168/tg2a4awhidri4xieiy11.jpg')
plant_begonia = Plant.new(name: 'Begonia', size: "Small", environment: "Outdoor", species: "Begonia Superba Yellow", height: "30cm - 60cm", rent_price: 2, sun_exposure: "Direct", organic: false, flowering: true, flower_color: "Yellow", availabe_for_purchase: false, buy_price: 35, address: "16 Rue du Repos, 75020 Paris", description: "Fresh and vibrant Begonia 'Superba Yellow' is a tropical-looking treasure with impressively large double blooms in a delicate cocktail of soft lemon and peach tones. Boldly brandishing a continuous display of these big blooms all summer long whether in sun or shade, it's just what's needed for injecting some warm, bright hues and floral magic into a dull spot.", watering: "Water 200ml each week but make sure the soil is dry before wating again.", care: "Nothing to do but enjoy the delicate, large blooms!", user: user_cameron)
plant_begonia.photo.attach(io: begonia, filename: 'begonia.png', content_type: 'image/png')
plant_begonia.save
puts "Created #{plant_begonia.name}"

croton = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864602/ipytofq26u4xbuh7jin9.jpg')
plant = Plant.new(name: "Croton", size: "Small", environment: "Indoor", species: "Codiaeum variegatum", height: "10cm - 20cm", rent_price: 1, sun_exposure: "Indirect", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: 35, address: "9 Cr des Petites Écuries, 75010 Paris", description: "Perfect plant with green and orange leaves to bring an accent of color to any apartment!", watering: "Water 50ml once per week.", care: "The plants must be supplied with sufficiently damp soil in order to prevent drooping.", user: user_sara)
plant.photo.attach(io: croton, filename: 'croton.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

orchid = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650289915/g1enaszgvdsxjkf0v62n.jpg')
plant_orchid = Plant.new(name: "Orchid", size: "Medium", environment: "Indoor", species: "Orchidaceae", height: "30cm - 60cm", rent_price: 2, sun_exposure: "Indirect", organic: true, flowering: true, flower_color: "Blue", availabe_for_purchase: false, buy_price: 35, address: "35 Rue du Chevalier de la Barre, 75018 Paris", description: "Airy and delicate to set a springtime mood!", watering: "Water 100ml once per week.", care: "Keep in a well lit room and make sure the soil is not too damp and there is proper drainage.", user: user_janeth)
plant_orchid.photo.attach(io: orchid, filename: 'orchid.png', content_type: 'image/png')
plant_orchid.save
puts "Created #{plant_orchid.name}"

purple = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650357376/zmdonyrklkzmmae62gv7.jpg')
plant = Plant.new(name: "Campanula", size: "Small", environment: "Indoor", species: "Campanula ambella", height: "10cm - 20cm", rent_price: 1, sun_exposure: "Indirect", organic: false, flowering: true, flower_color: "Purple", availabe_for_purchase: false, buy_price: 35, address: "5 Rue de Thorigny, 75003 Paris", description: "Campanula is a beautiful plant that is suitable for outdoors. Its green foliage is offset with small, purple, trumpet shaped flowers. This is a favourite amongst Tortoise keepers.", watering: "Water the plant regularly; twice a week is sufficient. Preferably water from below so that the foliage and flowers do not get wet. Briefly immersing the pot is also an option. Allow to drain well in order to ensure that the soil does not stay too wet.", care: "Some houseplant food for flowering plants once a fortnight will ensure long flowering.", user: user_cameron)
plant.photo.attach(io: purple, filename: 'campanula.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

rose = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649852136/igw5gwys4hsmmqwg08rj.jpg')
plant = Plant.new(name: "Parisian Lily", size: "Small", environment: "Indoor", species: "Medinilla magnifica", height: "30cm - 60cm", rent_price: 5, sun_exposure: "Indirect", organic: false, flowering: true, flower_color: "Pink", availabe_for_purchase: false, buy_price: 35, address: "55 Rue du Faubourg Saint-Honoré, 75008 Paris", description: "Delicate rose flower perfect for to decorate your table while guests are over!", watering: "Water 100ml each week", care: "Nothing to do but enjoy!", user: user_sara)
plant.photo.attach(io: rose, filename: 'rose.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

hydrangeas = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649948331/fcfncm3eudowe4eho3yk.jpg')
plant = Plant.create(name: "Limelight Hydrangea", size: "Large", environment: "Outdoor", species: "Hydrangea paniculata", height: "100cm+", rent_price: 10, sun_exposure: "Direct", organic: true, flowering: true, flower_color: "White", availabe_for_purchase: false, buy_price: 35, address: "1 Rue de Rivoli, 75001 Paris", description: "This has very large flowers that are held upright by strong stems.", watering: "Water 1L each week", care: "Whisper kind words in her leaves every hour for optimum beauty. Also, protect from any strong winds.", user: user_janeth)
plant.photo.attach(io: hydrangeas, filename: 'hydrangeas.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

caladium = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864904/uyumx3c4jkdczoc1xedq.jpg')
plant = Plant.new(name: "Caladium Tuber", size: "Small", environment: "Indoor", species: "Caladium bicolor", height: "20cm - 30cm", rent_price: 3, sun_exposure: "Indirect", organic: true, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: 35, address: "42 Rue Blomet, 75015 Paris", description: "Nice white leaves with a splash of red - wow your guests!", watering: "Water 50ml every week", care: "Nothing to do but enjoy!", user: user_cameron)
plant.photo.attach(io: caladium, filename: 'caladium.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

rubber_tree = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864788/co3ijavwwuz3lpvphdgo.jpg')
plant = Plant.new(name: "Rubber Tree", size: "Medium", environment: "Indoor", species: "Hevea brasiliensis", height: "30cm - 60cm", rent_price: 2, sun_exposure: "Direct", organic: false, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: 35, address: "168 Av. de Choisy, 75013 Paris", description: "Add a jungle-like aspect to your party!", watering: "Spritz leaves daily with room-temperature water", care: "Nothing to do but enjoy!", user: user_sara)
plant.photo.attach(io: rubber_tree, filename: 'rubber_tree.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

superbells = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650358314/jpomismllw3zrmqq3rgo.jpg')
plant = Plant.new(name: "Superbells", size: "Small", environment: "Indoor", species: "Double Ruby Calibrachoa hybrid", height: "20 - 30cm", rent_price: 2, sun_exposure: "Direct", organic: false, flowering: true, flower_color: "Multi", availabe_for_purchase: false, buy_price: 35, address: "36 Rue Geoffroy-Saint-Hilaire, 75005 Paris", description: "This exquisite double-flowered calibrachoa will add instant elegance to your patio containers, window boxes and porch baskets. From spring into fall, deep red blossoms cover the cascading stems as it spills over the edges of your containers.", watering: "Calibrachoa do not like to have constantly damp soil. For most gardens, containers are the best use for Calibrachoa.", care: "The plants are low-maintenance with no deadheading needed. They will do best if fertilized on a regular basis. Calibrachoa can be sensitive to both high and low pH.", user: user_janeth)
plant.photo.attach(io: superbells, filename: 'superbells.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

hk = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1649864725/gcogwtyviim5bgucftmh.jpg')
plant = Plant.new(name: "Hoya Kerrii", size: "Small", environment: "Indoor", species: "Acokanthera obovata var. kerrii", height: "10cm - 20cm", rent_price: 1, sun_exposure: "Indirect", organic: false, flowering: false, flower_color: nil, availabe_for_purchase: false, buy_price: 35, address: "1 Rue des Fossés Saint-Bernard, 75005 Paris", description: "Heart-shaped plant will remind you to take a moment of mindfulness with every glance.", watering: "Watering 50ml once every two weeks.", care: "Nothing to do here!", user: user_cameron)
plant.photo.attach(io: hk, filename: 'hoya-kerrii.png', content_type: 'image/png')
plant.save
puts "Created #{plant.name}"

puts "Creating faker plants"

# Faker for 100 more plants

faker_height = ["10cm - 20cm", "20cm - 30cm", "30cm - 60cm", "60cm - 100cm", "100cm+"]
faker_size = ["Large", "Medium", "Small"]
faker_environ = ["Indoor", "Outdoor"]
faker_species = ["Nephrolepis exaltata", "Alstroemeria Princess Paola", "Begonia Superba Yellow", "Codiaeum variegatum", "Orchidaceae", "Campanula ambella", "Medinilla magnifica", "Hydrangea paniculata", "Caladium bicolor", "Hevea brasiliensis", "Double Ruby Calibrachoa hybrid", "Acokanthera obovata var. kerrii"]
faker_rent = (1..20).to_a
faker_sun = ["Direct", "Indirect"]
faker_desc = ["Lovely little plant for your space!", "Beautiful flower sure to make your guests smile!", "Brings the outdoors, indoors!","A great addition to your space.", "Liven up any room!", "Your guests will surely be impressed!", "Lightly scented to remind you to breath deeply and smell the flowers!"]
faker_care = ["Nothing to do here but enjoy the company of your new guest!", "Gaze upon the longevity of the flowers with adoration.", "Nothing to do but enjoy the delicate, large blooms!", "The plants must be supplied with sufficiently damp soil in order to prevent drooping.", "Keep in a well lit room and make sure the soil is not too damp and there is proper drainage.", "Some houseplant food for flowering plants once a fortnight will ensure long flowering.", "Whisper kind words in her leaves every hour for optimum beauty. Also, protect from any strong winds.", "The plants are low-maintenance with no deadheading needed. They will do best if fertilized on a regular basis. Roots can be sensitive to both high and low pH."]
address = ["56 Bd de la Boissière, 93100 Montreuil", "Av. Daumesnil, 75012 Paris", "181 Bd Macdonald, 75019 Paris", "8 Rue David d'Angers, 75019 Paris", "2-12 Rue François Mitterrand, 94200 Ivry-sur-Seine", "2 Rue Cauchy, 75015 Paris", "10 Rue Dupleix, 75015 Paris", "2 Rue Louis Boilly, 75016 Paris", "40 Rue Worth, 92150 Suresnes", "Pl. de la Vache Noire, 94110 Arcueil", "88 Av. de Choisy, 75013 Paris", "12 Rue du Père Guérin, 75013 Paris", "49 Rue Monge, 75005 Paris", "10 Rue des Bernardins, 75005 Paris", "57 Rue Galande, 75005 Paris", "3 Pl. Saint-Michel, 75005 Paris", "121 Rue de Reuilly, 75012 Paris", "242 Rue du Faubourg Saint-Antoine, 75012 Paris", "56 Rue Carnot, 93100 Montreuil", "15 Pl. du Général de Gaulle, 93100 Montreuil", "1 Rue Saint-Germain, 93230 Romainville", "La, 4 Av. Paul Vaillant Couturier, 93120 La Courneuve", "2 Rue Jesse Owens, 93200 Saint-Denis", "23 Av. Marceau, 92400 Courbevoie"]
faker_name = ["Abutilon", "Acacia", "Aconite", "African Daisy", "Agapanthus", "Ageratum", "Alchemilla", "Allium", "Alstroemeria", "Alyssum", "Amaranthus", "Amaryllis", "Anemone", "Anise Hyssop", "Armeria Maritima", "Aster", "Azalea", "Baby's Breath", "Bachelor's Button", "Balloon Flower", "Ballota", "Bee Balm", "Begonia", "Bellflower", "Bergamot", "Bergenia", "Billbergia", "Black-eyed Susan", "Blanket Flower", "Blazing Star", "Bleeding Heart", "Bletilla","Bluestar Flower","Bluebonnets", "Blue-eyed Grass", "Borage", "Bottlebrush", "Bouvardia", "Brachyscome", "Broom", "Buttercup", "Butterfly Bush", "Calceolaria", "Calendula", "California Poppy", "Calla Lily", "Camellia","Candytuft", "Canna Lily", "Cape Leadwort", "Cape Primrose", "Cardinal Flower", "Carnation", "Catharanthus", "Catmint", "Celosia", "Cerastium Tomentosum", "Chicory", "Chionodoxa", "Chrysanthemum", "Clarkia", "Clematis", "Clover", "Columbine", "Coneflower", "Coral Bells", "Coral Vine", "Coreopsis", "Cornflower", "Corydalis", "Cosmos", "Cotoneaster", "Crocosmia", "Crocus", "Crown Imperial", "Cuckoo Flower", "Cyclamen", "Daffodil", "Dahlia", "Daisy", "Dandelion", "Daphne", "Daylily", "Decumaria", "Delphinium","Desert Rose", "Deutzia", "Dianella", "Dianthus barbatus", "Diascia","Dietes","Dill", "Disa", "Dutch Iris", "Echinops", "Echium", "Elder", "English Bluebell", "Epimedium", "Eremurus", "Erica", "Erigeron", "Euphorbia", "Eustoma", "Evening Primrose", "Fall Crocus", "Feverfew", "Firethorn", "Flaming Katy", "Flannel Flower", "Flax Flower", "Flowering Dogwood", "Forget Me Not", "Forsythia", "Four O'clock", "Foxglove", "Frangipani Flower","Freesia","French Marigold", "Fuchsia", "Gaillardia", "Gardenia", "Gazania", "Geranium", "Gerbera Flower", "Gladiolas", "Goldenrod", "Grape Hyacinth", "Guzmania", "Hawthorn", "Heather", "Hebe", "Helenium", "Helichrysum", "Heliotrope", "Hellebore", "Hibiscus", "Holly", "Hollyhock", "Honeysuckle", "Hosta", "Hyacinth", "Hydrangea","Hyssop","Ice Plant", "Iceland Poppy", "Impatiens", "Ipomoea Lobata", "Iris", "Ixia", "Ixora", "Jacob's Ladder", "Jasmine", "Johnny Jump Up", "Kaffir Lily", "Kalmia", "Kangaroo Paw", "Knautia", "Kniphofia", "Lady's Slipper", "Laelia", "Lantana", "Larkspur", "Lavatera", "Lavender", "Lemon Verbena", "Lewesia", "Lilac", "Lily of the Valley", "Lily", "Linaria", "Lotus", "Love in the Mist", "Lunaria", "Lupin", "Magnolia", "Maltese Cross", "Mandevilla", "Marguerite Daisy", "Marigold", "Matthiola", "Mayflower", "Meconopsis", "Mimosa", "Monk's Hood", "Moraea", "Morning Glory", "Moss Rose", "Narcissus", "Nasturtium", "Nemesia", "Nemophila", "Neoregelia", "Nerine", "New Zealand Tea Tree", "Nierembergia", "Nolana", "Oleander", "Olearia", "Orchid", "Oriental Lily", "Oriental Poppy", "Ornamental Cherry", "Ornithogalum", "Osteospermum", "Oxalis", "Oxeye Daisy", "Oyster Plant", "Painted Daisy", "Pansy", "Parodia", "Passion Flower", "Peace Lily", "Pelargonium", "Penstemon", "Peony", "Periwinkle", "Persian Buttercup", "Petunia", "Phlox", "Photinia", "Physostegia", "Pincushion Flower", "Pinks", "Poinsettia", "Potentilla", "Polyanthus", "Poppy", "Powder Puff", "Quaker Ladies", "Queen Anne's Lace", "Queen of the Meadow", "Queen's Cup", "Quince", "Rain Lily", "Rock Rose", "Rondeletia", "Roses", "Rose of Sharon", "Sage", "Saint John's Wort", "Scaevola", "Scented Geranium", "Scilla", "Sedum", "Shasta Daisy", "Silene", "Snapdragon", "Snowdrop", "Snowflake", "Soapwort", "Speedwell", "Starflower", "Statice", "Sunflower", "Sweet Pea", "Tea Rose", "Tiger Flower", "Tithonia", "Trachelium", "Trillium", "Triteleia", "Tritonia crocata", "Trollius", "Trumpet Vine", "Tuberose", "Tulip", "Urn Plant", "Ursinia", "Uva Ursi", "Valerian", "Verbena", "Viburnum", "Viola", "Virginia Creeper", "Wallflower", "Wandflower", "Water lilies", "Watsonia", "Wax Plant", "Wedelia", "Weigela", "Whirling Butterflies", "Winter Jasmine", "Winterberry", "Wishbone Flower", "Woolly Violet", "Xanthoceras sorbifolium", "Xerophyllum", "Xylobium", "Xylosma", "Yarrow", "Yellow Archangel", "Yellow Bell", "Yellow-eyed Grass", "Zenobia", "Zinnia"]

100.times do
  plant = Plant.new(
    name: faker_name.sample,
    size: faker_size.sample,
    environment: faker_environ.sample,
    species: faker_species.sample,
    height: faker_height.sample,
    rent_price: faker_rent.sample,
    sun_exposure: faker_sun.sample,
    organic: false,
    flowering: true,
    flower_color: 'Red',
    availabe_for_purchase: false,
    buy_price: 35,
    address: address.sample,
    description: faker_desc.sample,
    watering: 'Water the plant regularly; twice a week is sufficient. Preferably water from below so that the foliage and flowers do not get wet. Briefly immersing the pot is also an option. Allow to drain well in order to ensure that the soil does not stay too wet.',
    care: faker_care.sample,
    user: User.where(professional: false).sample
  )
  plant_url = URI.open("https://loremflickr.com/300/300/flowers/all")
  plant.photo.attach(io: plant_url, filename: "#{plant.name}.png", content_type: 'image/png')
  plant.save
  puts "Made #{plant.name}"
end

puts "Finished!"

puts "Creating reviews..."

review_janeth = Review.new(rating: 4, content: "Thank you so much for this amazing plant i loved it so much!!", user_id: user_janeth.id, plant_id: plant_orchid.id)
review_janeth.save
puts "#{user_janeth.first_name} review created"

review_janeth = Review.new(rating: 5, content: "Your shop is really amazing, i really don't know wich plant to choose everytime i come on your profile ^^", user_id: user_janeth.id, plant_id: plant_orchid.id)
review_janeth.save
puts "#{user_janeth.first_name} review created"

review_sara = Review.new(rating: 3, content: "Thank you so much for this amazing plant i loved it so much!!", user_id: user_sara.id, plant_id: plant_fern.id)
review_sara.save
puts "#{user_sara.first_name} review created"

review_sara = Review.new(rating: 4, content: "Your shop is really amazing, i really don't know wich plant to choose everytime i come on your profile ^^", user_id: user_sara.id, plant_id: plant_fern.id)
review_sara.save
puts "#{user_sara.first_name} review created"

review_cameron = Review.new(rating: 3, content: "Thank you so much for this amazing plant i loved it so much!!", user_id: user_cameron.id, plant_id: plant_begonia.id)
review_cameron.save
puts "#{user_cameron.first_name} review created"

review_cameron = Review.new(rating: 4, content: "Your shop is really amazing, i really don't know wich plant to choose everytime i come on your profile ^^", user_id: user_cameron.id, plant_id: plant_begonia.id)
review_cameron.save
puts "#{user_cameron.first_name} review created"

puts "Creating faker reviews"

faker_rating = (1..5).to_a
faker_content = ["Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid magni veritatis illo nostrum laborum cumque dolor quisquam quod molestiae, distinctio consequuntur, officia ab repudiandae provident ducimus aspernatur exercitationem eius itaque.", "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellat ut beatae incidunt, facilis dicta laudantium voluptatibus maxime. Minima, nemo quam voluptates cumque dolorem quo, dignissimos consequatur nobis animi enim ad?", "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum qui dolor ullam possimus! Error ut, temporibus officia natus facere, asperiores esse autem, cupiditate numquam ipsa velit minima reprehenderit ad sit.", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium laboriosam velit voluptatem, quia facilis vitae, ipsa id necessitatibus magnam dolorem corrupti numquam laudantium mollitia similique, voluptatibus perferendis? Ea, corporis provident?"]
faker_user = User.where(professional: false)

200.times do
  review = Review.new(
    rating: faker_rating.sample,
    content: faker_content.sample,
    user_id: faker_user.ids.sample,
    plant_id: Plant.all.ids.sample
  )
  review.save
  puts "Faked review"
end

puts "Finished!"

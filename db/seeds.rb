# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pin.destroy_all
Board.destroy_all
Save.destroy_all


require 'faker' 
require 'date'

current_datetime = DateTime.now

puts Faker::TvShows::RuPaul.queen 
puts current_datetime

user1 = User.create!(username: 'demo', password: 'password', email:'demo@demo.com', age: 25)

# for i in 0..25
#   User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
# end


user2 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user3 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user4 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user5 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user6 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user7 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user8 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user9 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user10 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user11 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user12 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user13 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user14 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user15 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user16 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user17 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user18 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user19 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user20 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user21 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user22 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user23 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user24 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user25 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
user26 = User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )


board1 = Board.create!(created_at: DateTime.now, name:"Home decor Inspo", description:"",user_id:user1.id, public:true) 

pin1 = Pin.create!(created_at: DateTime.now, title:"Plant shelf idea", user_id:user20.id)
pin1.photo.attach(io: File.open(File.expand_path("../../public/images/My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg", __FILE__)), filename: "My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg")
pin2 = Pin.create!(created_at: DateTime.now, title:"20 Borderline Genius Ways To Spruce Up Your Bedroom", user_id:user10.id)
pin2.photo.attach(io: File.open(File.expand_path("../../public/images/20 Bedroom Decorating Ideas, Trends & Tips For 2021.png", __FILE__)), filename: "20 Bedroom Decorating Ideas, Trends & Tips For 2021.png")
pin3 = Pin.create!(created_at: DateTime.now, title:"Boho Bedroom Decor Ideas", user_id:user12.id)
pin3.photo.attach(io: File.open(File.expand_path("../../public/images/22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg", __FILE__)), filename: "22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg")
pin4 = Pin.create!(created_at: DateTime.now, title:"How To Design A Sustainable & Minimalist Holiday Home", user_id:user5.id)
pin4.photo.attach(io: File.open(File.expand_path("../../public/images/How To Design A Sustainable & Minimalist Holiday Home.jpeg", __FILE__)), filename: "How To Design A Sustainable & Minimalist Holiday Home.jpeg")
pin5 = Pin.create!(created_at: DateTime.now, title:"10 Beautiful Screened in Porch Ideas", user_id:user6.id)
pin5.photo.attach(io: File.open(File.expand_path("../../public/images/10 Beautiful Screened in Porch Ideas.png", __FILE__)), filename: "10 Beautiful Screened in Porch Ideas.png")
pin6 = Pin.create!(created_at: DateTime.now, title:"The New Neutrals", user_id:user8.id)
pin6.photo.attach(io: File.open(File.expand_path("../../public/images/Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg", __FILE__)), filename: "Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg")
pin7 = Pin.create!(created_at: DateTime.now, title:"How to style bookshelves", user_id:user7.id)
pin7.photo.attach(io: File.open(File.expand_path("../../public/images/Built-in Bookshelf Styling.jpeg", __FILE__)), filename: "Built-in Bookshelf Styling.jpeg")
pin8 = Pin.create!(created_at: DateTime.now, title:"How I Decorated My Entryway on a Budget", user_id:user1.id)
pin8.photo.attach(io: File.open(File.expand_path("../../public/images/How I Decorated My Entryway on a Budget.jpeg", __FILE__)), filename: "How I Decorated My Entryway on a Budget.jpeg")
pin9 = Pin.create!(created_at: DateTime.now, title:"Modern Cottage Style Bedroom", user_id:user1.id)
pin9.photo.attach(io: File.open(File.expand_path("../../public/images/Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png", __FILE__)), filename: "Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png")
pin10 = Pin.create!(created_at: DateTime.now, title:"Pantry Organization", user_id:user1.id)
pin10.photo.attach(io: File.open(File.expand_path("../../public/images/Pantry cupboard inspiration!.jpeg", __FILE__)), filename: "Pantry cupboard inspiration!.jpeg")
pin11 = Pin.create!(created_at: DateTime.now, title:"Lookbook | Backsplash", user_id:user1.id)
pin11.photo.attach(io: File.open(File.expand_path("../../public/images/Lookbook _ Backsplash.png", __FILE__)), filename: "Lookbook _ Backsplash.png")
pin12 = Pin.create!(created_at: DateTime.now, title:"Room Ideas", user_id:user1.id)
pin12.photo.attach(io: File.open(File.expand_path("../../public/images/60+ Aesthetic Dorm Room Ideas On A Budget.jpeg", __FILE__)), filename: "60+ Aesthetic Dorm Room Ideas On A Budget.jpeg")


board2 = Board.create!(created_at: DateTime.now, name:"Dinner Ideas", description:"", user_id:user3.id, public:true) # 1,3


pin13 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Honey Balsamic Glazed Chicken", user_id:user9.id)
pin13.photo.attach(io: File.open(File.expand_path("../../public/images/Honey Balsamic Chicken _ Evolving Table Recipe.jpeg", __FILE__)), filename: "Honey Balsamic Chicken _ Evolving Table Recipe.jpeg")

pin14 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Slow Cooker Pot Roast", user_id:user10.id)
pin14.photo.attach(io: File.open(File.expand_path("../../public/images/Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg", __FILE__)), filename: "Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg")

pin15 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"CROCK POT CUBED STEAK & GRAVY", user_id:user12.id)
pin15.photo.attach(io: File.open(File.expand_path("../../public/images/Crock Pot Cubed Steak with Gravy.jpeg", __FILE__)), filename: "Crock Pot Cubed Steak with Gravy.jpeg")

pin16 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Stromboli", user_id:user13.id)
pin16.photo.attach(io: File.open(File.expand_path("../../public/images/How to Make Homemade Stromboli - Sally's Baking Addiction.png", __FILE__)), filename: "How to Make Homemade Stromboli - Sally's Baking Addiction.png")

pin17 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Healthy Baked Zucchini Fries with Parmesan Cheese", user_id:user1.id)
pin17.photo.attach(io: File.open(File.expand_path("../../public/images/Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg", __FILE__)), filename: "Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg")

pin18 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Quick Spinach Pasta", user_id:user4.id)
pin18.photo.attach(io: File.open(File.expand_path("../../public/images/Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg", __FILE__)), filename: "Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg")

pin19 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Spanish Rice", user_id:user13.id)
pin19.photo.attach(io: File.open(File.expand_path("../../public/images/One Pot Spanish Chicken and Rice.jpeg", __FILE__)), filename: "One Pot Spanish Chicken and Rice.jpeg")

pin20 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"OVEN BAKED CHICKEN PARMESAN", user_id:user3.id)
pin20.photo.attach(io: File.open(File.expand_path("../../public/images/Baked Parmesan Chicken.jpeg", __FILE__)), filename: "Baked Parmesan Chicken.jpeg")

pin21 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Asian Steak Bites and Potatoes", user_id:user3.id)
pin21.photo.attach(io: File.open(File.expand_path("../../public/images/Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg", __FILE__)), filename: "Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg")

pin22 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"BBQ CHICKEN SLIDERS", user_id:user3.id)
pin22.photo.attach(io: File.open(File.expand_path("../../public/images/Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg", __FILE__)), filename: "Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg")

pin23 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"SLOW COOKER HONEY GARLIC CHICKEN AND VEGGIES", user_id:user3.id)
pin23.photo.attach(io: File.open(File.expand_path("../../public/images/Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png", __FILE__)), filename: "Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png")

pin24 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Bang Bang Shrimp Pasta Recipe", user_id:user3.id)
pin24.photo.attach(io: File.open(File.expand_path("../../public/images/Bang Bang Shrimp and Pasta.png", __FILE__)), filename: "Bang Bang Shrimp and Pasta.png")

pin25 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Baked Honey Garlic Chicken Tenders", user_id:user3.id)
pin25.photo.attach(io: File.open(File.expand_path("../../public/images/Honey Garlic Chicken Tenders {Paleo}.jpeg", __FILE__)), filename: "Honey Garlic Chicken Tenders {Paleo}.jpeg")

board3 = Board.create!(description:"", created_at: DateTime.now, name:"Floral Arrangements", user_id:user1.id, public:true) # 1,3,1

pin26 =	Pin.create!(created_at: DateTime.now, title:"San Diego Elopement", user_id:user6.id)
pin27 =	Pin.create!(created_at: DateTime.now, title:"I LOVE YOU A LATTE", user_id:user6.id)
pin28 =	Pin.create!(created_at: DateTime.now, title:"Spring Flowers for Wedding", user_id:user4.id)
pin29 =	Pin.create!(created_at: DateTime.now, title:"A COLOURFUL MODERN WEDDING", user_id:user25.id)
pin30 =	Pin.create!(created_at: DateTime.now, title:"Cova — Light + Ladder", user_id:user23.id)
pin31 =	Pin.create!(created_at: DateTime.now, title:"5 Floral Trends for 2021", user_id:user20.id)
pin32 =	Pin.create!(created_at: DateTime.now, title:"Water Bamboo Flower Arrangement", user_id:user21.id)
pin33 =	Pin.create!(created_at: DateTime.now, title:"Create Your Own Floral Arrangement", user_id:user19.id)
pin34 =	Pin.create!(created_at: DateTime.now, title:"Large Real Touch White Magnolia", user_id:user18.id)
pin35 =	Pin.create!(created_at: DateTime.now, title:"X-Large 60 White Tulips", user_id:user13.id)
pin36 =	Pin.create!(created_at: DateTime.now, title:"Amaranthus composition", user_id:user1.id)
pin37 =	Pin.create!(created_at: DateTime.now, title:"Farmhouse Style Floral", user_id:user1.id)
pin38 =	Pin.create!(created_at: DateTime.now, title:"Blooming Apricot & Blush Magnolia Branches", user_id:user1.id)
pin39 =	Pin.create!(created_at: DateTime.now, title:"Private Floral Arranging Class", user_id:user1.id)

board4 = Board.create!(description:"", created_at: DateTime.now, name:"DIY Home Decor", user_id:user3.id, public:true) 

pin40 = Pin.create!(created_at: DateTime.now, title:"DIY Sofa Table Build", user_id:user12.id)
pin41 = Pin.create!(created_at: DateTime.now, title:"How to make a giant standing mirror for $100", user_id:user21.id)
pin42 = Pin.create!(created_at: DateTime.now, title:"Picture Ledge DIY", user_id:user18.id)
pin43 = Pin.create!(created_at: DateTime.now, title:"DIY Patio Basket Lanterns", user_id:user15.id)
pin44 = Pin.create!(created_at: DateTime.now, title:"DIY FAUX CERAMIC VASES", user_id:user2.id)
pin45 = Pin.create!(created_at: DateTime.now, title:"DIY Wall Art with Wood Shims", user_id:user2.id)
pin46 = Pin.create!(created_at: DateTime.now, title:"DIY RATTAN CABINET HACK WITH BURLAP", user_id:user6.id)
pin47 = Pin.create!(created_at: DateTime.now, title:"The Index Wall Shelf in Oak", user_id:user6.id)
pin48 = Pin.create!(created_at: DateTime.now, title:"DIY TV frame", user_id:user3.id)
pin49 = Pin.create!(created_at: DateTime.now, title:"Hidden Dresser Door", user_id:user3.id)
pin50 = Pin.create!(created_at: DateTime.now, title:"DIY Closet Makeover", user_id:user3.id)
pin51 = Pin.create!(created_at: DateTime.now, title:"DIY footed bowl", user_id:user3.id)


board5 = Board.create!(description:"", created_at: DateTime.now, name:"Autum Outfits", user_id:user3.id, public:true) 

pin52 = Pin.create!(created_at: DateTime.now, title:"Parisian Chic", user_id:user3.id)
pin53 = Pin.create!(created_at: DateTime.now, title:"comfortable fall style", user_id:user3.id)
pin54 = Pin.create!(created_at: DateTime.now, title:"brown & black combo is so good", user_id:user3.id)
pin55 = Pin.create!(created_at: DateTime.now, title:"15 Outfits para verte chic", user_id:user3.id)
pin56 = Pin.create!(created_at: DateTime.now, title:"Dropped shoulder", user_id:user3.id)
pin57 = Pin.create!(created_at: DateTime.now, title:"Long Sleeve Lapel Loose Plaid", user_id:user5.id)
pin58 = Pin.create!(created_at: DateTime.now, title:"Lorna luxe brown check", user_id:user5.id)
pin59 = Pin.create!(created_at: DateTime.now, title:"Long Sleeve Button Down", user_id:user7.id)
pin60 = Pin.create!(created_at: DateTime.now, title:"Womens Turtleneck", user_id:user8.id)
pin61 = Pin.create!(created_at: DateTime.now, title:"The Fall Trends You’re Probably Missing", user_id:user9.id)
pin62 = Pin.create!(created_at: DateTime.now, title:"whatemwore on LTK", user_id:user9.id)


board6 = Board.create!(description:"", created_at: DateTime.now, name:"Christmas Decor Ideas", user_id:user3.id, public:true) 

pin63 = Pin.create!(created_at: DateTime.now, title:"Christmas Tour - Home Bunch", user_id:user3.id)
pin64 = Pin.create!(created_at: DateTime.now, title:"Style Scouting: Vol. 24", user_id:user3.id)
pin65 = Pin.create!(created_at: DateTime.now, title:"35 Pretty Christmas Living", user_id:user3.id)
pin66 = Pin.create!(created_at: DateTime.now, title:"97 Farmhouse Christmas Decor", user_id:user3.id)
pin67 = Pin.create!(created_at: DateTime.now, title:"Christmas Tree Ideas and Decor Trends for 2021", user_id:user10.id)
pin68 = Pin.create!(created_at: DateTime.now, title:"CHRISTMAS TIRE ORNAMENTS", user_id:user10.id)
pin69 = Pin.create!(created_at: DateTime.now, title:"Christmas Mantel", user_id:user19.id)
pin70 = Pin.create!(created_at: DateTime.now, title:"Quick Christmas Table Centerpiece", user_id:user19.id)
pin71 = Pin.create!(created_at: DateTime.now, title:"Woodland Christmas Home Tour", user_id:user19.id)
pin72 = Pin.create!(created_at: DateTime.now, title:"Simple and Natural Christmas Decor", user_id:user10.id)
pin73 = Pin.create!(created_at: DateTime.now, title:"Christmas Decor We Are Drooling Over", user_id:user19.id)
pin74 = Pin.create!(created_at: DateTime.now, title:"Christmas Home Tour 2020", user_id:user19.id)


board7 = Board.create!(description:"", created_at: DateTime.now, name:"Engagement Rings", user_id:user1.id, public:true) 

pin75 = Pin.create!(created_at: DateTime.now, title:"Marquise Cut Moissanite", user_id:user19.id)
pin76 = Pin.create!(created_at: DateTime.now, title:"Round Pave Engagement Ring", user_id:user19.id)
pin77 = Pin.create!(created_at: DateTime.now, title:"Luxe Elodie Diamond", user_id:user19.id)
pin78 = Pin.create!(created_at: DateTime.now, title:"1 Carat Oval Hidden Halo Style", user_id:user22.id)
pin79 = Pin.create!(created_at: DateTime.now, title:"Anne Engagement Ring", user_id:user22.id)
pin80 = Pin.create!(created_at: DateTime.now, title:"Twisted Band 0.8 carat Lab Diamond ", user_id:user22.id)
pin81 = Pin.create!(created_at: DateTime.now, title:"Oval Green Blue Sapphire", user_id:user22.id)
pin82 = Pin.create!(created_at: DateTime.now, title:"WHITE RADIANT HALO PAVE DIAMOND RING", user_id:user22.id)
pin83 = Pin.create!(created_at: DateTime.now, title:"Brilliant Earth Viviana Oval Diamond Engagement Ring", user_id:user14.id)
pin84 = Pin.create!(created_at: DateTime.now, title:"Juno Ring with White", user_id:user14.id)
pin85 = Pin.create!(created_at: DateTime.now, title:"Vintage Round Engagement Ring Twisted Band", user_id:user14.id)
pin86 = Pin.create!(created_at: DateTime.now, title:"2.20 ct Round Brilliant Cut", user_id:user14.id)
pin87 = Pin.create!(created_at: DateTime.now, title:"Vintage Scroll Pattern Engraved Diamond Engagement Ring", user_id:user22.id)
pin88 = Pin.create!(created_at: DateTime.now, title:"Radiant cut engagement ring", user_id:user14.id)


board8 = Board.create!(description:"", created_at: DateTime.now, name:"Green Aesthetic", user_id:user7.id, public:true) 

pin89 = Pin.create!(created_at: DateTime.now, title:"sage green collage kit", user_id:user7.id)
pin90 = Pin.create!(created_at: DateTime.now, title:"Matisse Print Green Leaf", user_id:user7.id)
pin91 = Pin.create!(created_at: DateTime.now, title:"Photo Wall Collage Kit", user_id:user7.id)
pin92 = Pin.create!(created_at: DateTime.now, title:"My Visit to the Real Monet's Garden in Giverny, France", user_id:user7.id)
pin93 = Pin.create!(created_at: DateTime.now, title:"fave green aesthetic <3", user_id:user7.id)
pin94 = Pin.create!(created_at: DateTime.now, title:"Abstract Faces Wallpaper Green / Gold Holden 12990", user_id:user7.id)
pin95 = Pin.create!(created_at: DateTime.now, title:"Aesthetics black and green", user_id:user7.id)
pin96 = Pin.create!(created_at: DateTime.now, title:"pastel green notebook", user_id:user10.id)
pin97 = Pin.create!(created_at: DateTime.now, title:"Art Print: Green Butterfly Study, 19x13in.", user_id:user10.id)
pin98 = Pin.create!(created_at: DateTime.now, title:"Fabric Forest Green and White", user_id:user10.id)
pin99 = Pin.create!(created_at: DateTime.now, title:"Sage Green and White", user_id:user10.id)
pin100 = Pin.create!(created_at: DateTime.now, title:"vintage indie poster pack", user_id:user10.id)
pin101 = Pin.create!(created_at: DateTime.now, title:"green heart wallpaper", user_id:user10.id)
pin102 = Pin.create!(created_at: DateTime.now, title:"Flowering Meadow, Dandelion", user_id:user9.id)


board9 = Board.create!(description:"", created_at: DateTime.now, name:"Hairstyles", user_id:user1.id, public:true) 

pin103 = Pin.create!(created_at: DateTime.now, title:"Long Butterfly Locs", user_id:user9.id)
pin104 = Pin.create!(created_at: DateTime.now, title:"Easy rubber band hairstyle", user_id:user9.id)
pin105 = Pin.create!(created_at: DateTime.now, title:"Wand Curls Lace Front Wigs", user_id:user9.id)
pin106 = Pin.create!(created_at: DateTime.now, title:"Sleek AF Braid & Edge", user_id:user9.id)
pin107 = Pin.create!(created_at: DateTime.now, title:"Papaya Castor Scalp Massaging Serum", user_id:user9.id)
pin108 = Pin.create!(created_at: DateTime.now, title:"11 Pretty Prom Hairstyles", user_id:user9.id)
pin109 = Pin.create!(created_at: DateTime.now, title:"Back To School Hairstyles For Teens", user_id:user12.id)
pin110 = Pin.create!(created_at: DateTime.now, title:"Short Curly Hairstyles: Loose Double Buns", user_id:user1.id)
pin111 = Pin.create!(created_at: DateTime.now, title:"Easy Bubble Braid Hairstyle", user_id:user12.id)
pin112 = Pin.create!(created_at: DateTime.now, title:"30 Trendy Hairstyles With Bangs You Will Want To Try", user_id:user12.id)
pin113 = Pin.create!(created_at: DateTime.now, title:"EASY BRAIDED PONYTAIL HAIRSTYLE SPRING 2021 🌷", user_id:user11.id)


board10 = Board.create!(description:"", created_at: DateTime.now, name:"Instagram Captions", user_id:user7.id, public:true) 

pin114 = Pin.create!(created_at: DateTime.now, title:"100 Insta Captions For Girls", user_id:user7.id)
pin115 = Pin.create!(created_at: DateTime.now, title:"Cool Snapchat Quotes & Captions", user_id:user7.id)
pin116 = Pin.create!(created_at: DateTime.now, title:"100 Instagram Captions", user_id:user7.id)
pin117 = Pin.create!(created_at: DateTime.now, title:"more captions✨", user_id:user7.id)
pin118 = Pin.create!(created_at: DateTime.now, title:"Cute and Aesthetic Instagram Captions", user_id:user7.id)
pin119 = Pin.create!(created_at: DateTime.now, title:"INSTAGRAM CAPTIONS", user_id:user7.id)
pin120 = Pin.create!(created_at: DateTime.now, title:"80 Sunset Captions For Instagram", user_id:user1.id)
pin121 = Pin.create!(created_at: DateTime.now, title:"Best Instagram Captions", user_id:user20.id)
pin122 = Pin.create!(created_at: DateTime.now, title:"Fall captions for instagram 2021", user_id:user20.id)
pin123 = Pin.create!(created_at: DateTime.now, title:"50 + Instagram Caption Ideas | Birthdays, Selfies, Summer", user_id:user20.id)
pin124 = Pin.create!(created_at: DateTime.now, title:"Quotes For Instagram Captions", user_id:user12.id)
pin125 = Pin.create!(created_at: DateTime.now, title:"Savage Instagram Captions For Guys", user_id:user12.id)
pin126 = Pin.create!(created_at: DateTime.now, title:"Instagram CAPTIONS FOR PICTURES", user_id:user12.id)
pin127 = Pin.create!(created_at: DateTime.now, title:"Instagram Captions", user_id:user3.id)



board11 = Board.create!(description:"", created_at: DateTime.now, name:"Kawaii Wallpapers", user_id:user7.id, public:true) 

pin128 = Pin.create!(created_at: DateTime.now, title:"CUTE", user_id:user7.id)
pin129 = Pin.create!(created_at: DateTime.now, title:"| 𝘩 𝘰 𝘮 𝘦 - template!", user_id:user7.id)
pin130 = Pin.create!(created_at: DateTime.now, title:"RantBook - 🌸1.//Je suis quelqu'un//🌸", user_id:user7.id)
pin131 = Pin.create!(created_at: DateTime.now, title:"aube blue 오브블루 on Twitter", user_id:user13.id)
pin132 = Pin.create!(created_at: DateTime.now, title:"@aube_blue NAVER", user_id:user13.id)
pin133 = Pin.create!(created_at: DateTime.now, title:"life planner ･ﾟ✧ - template", user_id:user13.id)
pin134 = Pin.create!(created_at: DateTime.now, title:"fondos de pantalla de anime", user_id:user13.id)
pin135 = Pin.create!(created_at: DateTime.now, title:"Illustration lovely style", user_id:user10.id)
pin136 = Pin.create!(created_at: DateTime.now, title:"マイメロ 待ち受け」の検索結果", user_id:user12.id)
pin137 = Pin.create!(created_at: DateTime.now, title:"•~fondo kawaii para tu celular~•", user_id:user12.id)
pin138 = Pin.create!(created_at: DateTime.now, title:"Free Lock Screen Wallpaper by Bymunbear", user_id:user12.id)
pin139 = Pin.create!(created_at: DateTime.now, title:"💖✨", user_id:user20.id)


board12 = Board.create!(description:"", created_at: DateTime.now, name:"mEmeS", user_id:user7.id, public:true) 

pin140 = Pin.create!(created_at: DateTime.now, title:"Funny relatable!", user_id:user2.id)
pin141 = Pin.create!(created_at: DateTime.now, title:"yes <3", user_id:user2.id)
pin142 = Pin.create!(created_at: DateTime.now, title:"Importantance of Friendship", user_id:user2.id)
pin143 = Pin.create!(created_at: DateTime.now, title:"meme", user_id:user15.id)
pin144 = Pin.create!(created_at: DateTime.now, title:"How I fix the WiFi", user_id:user15.id)
pin145 = Pin.create!(created_at: DateTime.now, title:"Hilliorus Memes", user_id:user15.id)
pin146 = Pin.create!(created_at: DateTime.now, title:"best bet to lose to", user_id:user17.id)
pin147 = Pin.create!(created_at: DateTime.now, title:"74 Primo Marvel Memes & Posts", user_id:user17.id)
pin148 = Pin.create!(created_at: DateTime.now, title:"21 Funny Loki Memes to Read When You've Got the Time", user_id:user17.id)
pin149 = Pin.create!(created_at: DateTime.now, title:'The Dog Like "he has a point"', user_id:user17.id)
pin150 = Pin.create!(created_at: DateTime.now, title:"I can’t this is too funny 😂", user_id:user17.id)
pin151 = Pin.create!(created_at: DateTime.now, title:"I Mean... You Tried..?", user_id:user20.id)


board13 = Board.create!(description:"", created_at: DateTime.now, name:"Nail design inspo", user_id:user1.id, public:true) 

pin152 =	Pin.create!(created_at: DateTime.now, title:"PRETTY & CHIC NAIL TRENDS AND DESIGNS FOR FALL 2021", user_id:user8.id)
pin153 =	Pin.create!(created_at: DateTime.now, title:"Swirls", user_id:user8.id)
pin154 =	Pin.create!(created_at: DateTime.now, title:"Colorful retro flowers nail", user_id:user8.id)
pin155 =	Pin.create!(created_at: DateTime.now, title:"24Pcs Long Coffin False Nails", user_id:user8.id)
pin156 =	Pin.create!(created_at: DateTime.now, title:"Fun Nail Ideas", user_id:user8.id)
pin157 =	Pin.create!(created_at: DateTime.now, title:"Rings to match September fall nails in 2021", user_id:user8.id)
pin158 =	Pin.create!(created_at: DateTime.now, title:"French Tip Coffin", user_id:user19.id)
pin159 =	Pin.create!(created_at: DateTime.now, title:"29 Cute Short Gel Nails Designs & Ideas", user_id:user19.id)
pin160 =	Pin.create!(created_at: DateTime.now, title:"♡luna press on nails♡", user_id:user1.id)
pin161 =	Pin.create!(created_at: DateTime.now, title:"DIY Dip Powder Nails", user_id:user1.id)
pin162 =	Pin.create!(created_at: DateTime.now, title:"TRENDY NAIL DESIGNS FOR SPRING 2021", user_id:user1.id)
pin163 =	Pin.create!(created_at: DateTime.now, title:"The Best Nail Art Trends", user_id:user1.id)
pin164 =	Pin.create!(created_at: DateTime.now, title:"30+ Summer Floral Nail Designs", user_id:user1.id)
pin165 =	Pin.create!(created_at: DateTime.now, title:"Black Nail Designs: Matte + Marbled", user_id:user1.id)


saves = [[152, 165, 13],[140, 151, 12],[128, 139, 11],[114, 127,10],[103, 113,9],[89, 102,8],[75, 88,7], [63, 74,6],[52, 62,5 ],[40, 51, 4],[26, 39, 3],[12, 25, 2],[1,12,1]]


saves.each do |board|
  (board[0]...board[1]).each do |pin_id|
    Save.create!(created_at: DateTime.now, board_id: eval("board#{board[2]}").id, pin_id: eval("pin#{pin_id}").id)
  end
end

 
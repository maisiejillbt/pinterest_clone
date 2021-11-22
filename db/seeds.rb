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

user1 = User.create!(username: 'demo', password: 'password', name:'Dr. James Barry', email:'demo@demo.com', age: 25)

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
pin1.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg", __FILE__)), filename: "My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg")
pin2 = Pin.create!(created_at: DateTime.now, title:"20 Borderline Genius Ways To Spruce Up Your Bedroom", user_id:user10.id)
pin2.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/20 Bedroom Decorating Ideas, Trends & Tips For 2021.png", __FILE__)), filename: "20 Bedroom Decorating Ideas, Trends & Tips For 2021.png")
pin3 = Pin.create!(created_at: DateTime.now, title:"Boho Bedroom Decor Ideas", user_id:user12.id)
pin3.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg", __FILE__)), filename: "22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg")
pin4 = Pin.create!(created_at: DateTime.now, title:"How To Design A Sustainable & Minimalist Holiday Home", user_id:user5.id)
pin4.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/How To Design A Sustainable & Minimalist Holiday Home.jpeg", __FILE__)), filename: "How To Design A Sustainable & Minimalist Holiday Home.jpeg")
pin5 = Pin.create!(created_at: DateTime.now, title:"10 Beautiful Screened in Porch Ideas", user_id:user6.id)
pin5.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/10 Beautiful Screened in Porch Ideas.png", __FILE__)), filename: "10 Beautiful Screened in Porch Ideas.png")
pin6 = Pin.create!(created_at: DateTime.now, title:"The New Neutrals", user_id:user8.id)
pin6.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg", __FILE__)), filename: "Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg")
pin7 = Pin.create!(created_at: DateTime.now, title:"How to style bookshelves", user_id:user7.id)
pin7.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/Built-in Bookshelf Styling.jpeg", __FILE__)), filename: "Built-in Bookshelf Styling.jpeg")
pin8 = Pin.create!(created_at: DateTime.now, title:"How I Decorated My Entryway on a Budget", user_id:user1.id)
pin8.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/How I Decorated My Entryway on a Budget.jpeg", __FILE__)), filename: "How I Decorated My Entryway on a Budget.jpeg")
pin9 = Pin.create!(created_at: DateTime.now, title:"Modern Cottage Style Bedroom", user_id:user1.id)
pin9.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png", __FILE__)), filename: "Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png")
pin10 = Pin.create!(created_at: DateTime.now, title:"Pantry Organization", user_id:user1.id)
pin10.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/Pantry cupboard inspiration!.jpeg", __FILE__)), filename: "Pantry cupboard inspiration!.jpeg")
pin11 = Pin.create!(created_at: DateTime.now, title:"Lookbook | Backsplash", user_id:user1.id)
pin11.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/Lookbook _ Backsplash.png", __FILE__)), filename: "Lookbook _ Backsplash.png")
pin12 = Pin.create!(created_at: DateTime.now, title:"Room Ideas", user_id:user1.id)
pin12.photo.attach(io: File.open(File.expand_path("../../public/images/home-decor/60+ Aesthetic Dorm Room Ideas On A Budget.jpeg", __FILE__)), filename: "60+ Aesthetic Dorm Room Ideas On A Budget.jpeg")


board2 = Board.create!(created_at: DateTime.now, name:"Dinner Ideas", description:"", user_id:user3.id, public:true) # 1,3


pin13 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Honey Balsamic Glazed Chicken", user_id:user9.id)
pin13.photo.attach(io: File.open(File.expand_path("../../public/images/food/Honey Balsamic Chicken _ Evolving Table Recipe.jpeg", __FILE__)), filename: "Honey Balsamic Chicken _ Evolving Table Recipe.jpeg")

pin14 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Slow Cooker Pot Roast", user_id:user10.id)
pin14.photo.attach(io: File.open(File.expand_path("../../public/images/food/Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg", __FILE__)), filename: "Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg")

pin15 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"CROCK POT CUBED STEAK & GRAVY", user_id:user12.id)
pin15.photo.attach(io: File.open(File.expand_path("../../public/images/food/Crock Pot Cubed Steak with Gravy.jpeg", __FILE__)), filename: "Crock Pot Cubed Steak with Gravy.jpeg")

pin16 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Stromboli", user_id:user13.id)
pin16.photo.attach(io: File.open(File.expand_path("../../public/images/food/How to Make Homemade Stromboli - Sally's Baking Addiction.png", __FILE__)), filename: "How to Make Homemade Stromboli - Sally's Baking Addiction.png")

pin17 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Healthy Baked Zucchini Fries with Parmesan Cheese", user_id:user1.id)
pin17.photo.attach(io: File.open(File.expand_path("../../public/images/food/Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg", __FILE__)), filename: "Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg")

pin18 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Quick Spinach Pasta", user_id:user4.id)
pin18.photo.attach(io: File.open(File.expand_path("../../public/images/food/Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg", __FILE__)), filename: "Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg")

pin19 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Spanish Rice", user_id:user13.id)
pin19.photo.attach(io: File.open(File.expand_path("../../public/images/food/One Pot Spanish Chicken and Rice.jpeg", __FILE__)), filename: "One Pot Spanish Chicken and Rice.jpeg")

pin20 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"OVEN BAKED CHICKEN PARMESAN", user_id:user3.id)
pin20.photo.attach(io: File.open(File.expand_path("../../public/images/food/Baked Parmesan Chicken.jpeg", __FILE__)), filename: "Baked Parmesan Chicken.jpeg")

pin21 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Asian Steak Bites and Potatoes", user_id:user3.id)
pin21.photo.attach(io: File.open(File.expand_path("../../public/images/food/Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg", __FILE__)), filename: "Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg")

pin22 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"BBQ CHICKEN SLIDERS", user_id:user3.id)
pin22.photo.attach(io: File.open(File.expand_path("../../public/images/food/Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg", __FILE__)), filename: "Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg")

pin23 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"SLOW COOKER HONEY GARLIC CHICKEN AND VEGGIES", user_id:user3.id)
pin23.photo.attach(io: File.open(File.expand_path("../../public/images/food/Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png", __FILE__)), filename: "Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png")

pin24 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Bang Bang Shrimp Pasta Recipe", user_id:user3.id)
pin24.photo.attach(io: File.open(File.expand_path("../../public/images/food/Bang Bang Shrimp and Pasta.png", __FILE__)), filename: "Bang Bang Shrimp and Pasta.png")

pin25 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Baked Honey Garlic Chicken Tenders", user_id:user3.id)
pin25.photo.attach(io: File.open(File.expand_path("../../public/images/food/Honey Garlic Chicken Tenders {Paleo}.jpeg", __FILE__)), filename: "Honey Garlic Chicken Tenders {Paleo}.jpeg")

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

pin26.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/496e71a42ca448bc687933235aebee30.jpg", __FILE__)), filename: "496e71a42ca448bc687933235aebee30.jpg")
pin28.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/A still life with flowers.jpeg", __FILE__)), filename: "A still life with flowers.jpeg")
pin27.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Best bridal bouquets 2017 _ Bridal bouquet ideas.jpeg", __FILE__)), filename: "Best bridal bouquets 2017 _ Bridal bouquet ideas.jpeg")
pin29.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Color Theory Design Co on Instagram_ “So much spring beauty poppin up in Portland right now! I’m definitely the most drawn to all of the variegated and multi-toned blooms_ I am…”.jpeg", __FILE__)), filename: "Color Theory Design Co on Instagram_ “So much spring beauty poppin up in Portland right now! I’m definitely the most drawn to all of the variegated and multi-toned blooms_ I am…”.jpeg")
pin30.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Design Tastemakers Reveal Their Favorite Fall Flower Arrangements.jpeg", __FILE__)), filename: "Design Tastemakers Reveal Their Favorite Fall Flower Arrangements.jpeg")
pin31.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Eye Candy_ Pinterest Favorites This Week - The English Room.jpeg", __FILE__)), filename: "Eye Candy_ Pinterest Favorites This Week - The English Room.jpeg")
pin32.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/HART Floral - Portland Oregon Wedding Florist.jpeg", __FILE__)), filename: "HART Floral - Portland Oregon Wedding Florist.jpeg")
pin33.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/HATTIE on Instagram_ “Sorry I had to repost this because the insta cut off the side of my arrangement some how!”.jpeg", __FILE__)), filename: "HATTIE on Instagram_ “Sorry I had to repost this because the insta cut off the side of my arrangement some how!”.jpeg") 
pin34.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/M I N I M A L I S M on Twitter.jpeg", __FILE__)), filename: "M I N I M A L I S M on Twitter.jpeg")
pin35.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Sarah Winward's Simple Winter Floral Arrangement.jpeg", __FILE__)), filename: "Sarah Winward's Simple Winter Floral Arrangement.jpeg")
pin36.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/SL&V.jpeg", __FILE__)), filename: "SL&V.jpeg")
pin37.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Trendspotting_ Nebulous, Airy, Levitational Wedding Designs.jpeg", __FILE__)), filename: "Trendspotting_ Nebulous, Airy, Levitational Wedding Designs.jpeg")
pin38.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/wedding decor that's over-the-top (in a good way).jpeg", __FILE__)), filename: "wedding decor that's over-the-top (in a good way).jpeg")
pin39.photo.attach(io: File.open(File.expand_path("../../public/images/flowers/Wild Flowers_ beautiful color palette for this bouquet.jpeg", __FILE__)), filename: "Wild Flowers_ beautiful color palette for this bouquet.jpeg")

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


pin40.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Sofa Table - Brooklyn Nicole Home.png", __FILE__)), filename: "DIY Sofa Table - Brooklyn Nicole Home.png") 
pin41.photo.attach(io: File.open(File.expand_path("../../public/images/diy/18 Magnificent Design Ideas For Decorating Master Bedroom.jpeg", __FILE__)), filename: "18 Magnificent Design Ideas For Decorating Master Bedroom.jpeg") 
pin42.photo.attach(io: File.open(File.expand_path("../../public/images/diy/Ledge Shelf When You Barely Know How to Use a Drill.jpeg", __FILE__)), filename: "Ledge Shelf When You Barely Know How to Use a Drill.jpeg")  
pin43.photo.attach(io: File.open(File.expand_path("../../public/images/diy/Creative DIY Outdoor Lighting Idea for $2.jpeg", __FILE__)), filename: "Creative DIY Outdoor Lighting Idea for $2.jpeg")  
pin44.photo.attach(io: File.open(File.expand_path("../../public/images/diy/FAUX CERAMIC VASES DIY - bits and bites.jpeg", __FILE__)), filename: "FAUX CERAMIC VASES DIY - bits and bites.jpeg")  
pin45.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Wall Art with Wood Shims - Fiddle Leaf Interiors.jpeg", __FILE__)), filename: "DIY Wall Art with Wood Shims - Fiddle Leaf Interiors.jpeg")  
pin46.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Rattan Cabinet Hack With Burlap.jpeg", __FILE__)), filename: "DIY Rattan Cabinet Hack With Burlap.jpeg")  
pin47.photo.attach(io: File.open(File.expand_path("../../public/images/diy/The Index Wall Shelf, Set of 4 in Oak.jpeg", __FILE__)), filename: "The Index Wall Shelf, Set of 4 in Oak.jpeg")  
pin48.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Samsung Frame TV.png", __FILE__)), filename: "DIY Samsung Frame TV.png")  
pin49.photo.attach(io: File.open(File.expand_path("../../public/images/diy/Home Solutions.jpeg", __FILE__)), filename: "Home Solutions.jpeg")  
pin50.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Custom Closet - IKEA TARVA & IVAR HACK - Handmade Weekly.jpeg", __FILE__)), filename: "DIY Custom Closet - IKEA TARVA & IVAR HACK - Handmade Weekly.jpeg")  
pin51.photo.attach(io: File.open(File.expand_path("../../public/images/diy/DIY Footed Display Bowls — Sugar & Cloth Decor %.jpeg", __FILE__)), filename: "DIY Footed Display Bowls — Sugar & Cloth Decor %.jpeg")  


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

pin52.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Button bodycon Lace Up Leather Skirt.jpeg", __FILE__)), filename: "Button bodycon Lace Up Leather Skirt.jpeg") 
pin53.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Casual Round Neck Long Sleeve Dress - Black _ XXL.jpeg", __FILE__)), filename: "Casual Round Neck Long Sleeve Dress - Black _ XXL.jpeg") 
pin54.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/fall_outfit.jpeg", __FILE__)), filename: "fall_outfit.jpeg") 
pin55.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Dropped shoulder lantern sleeve pocket coat plus size brown-4XL.png", __FILE__)), filename: "Dropped shoulder lantern sleeve pocket coat plus size brown-4XL.png") 
pin56.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/FALL FASHION OUTFIT IDEAS _ NEUTRAL AUTUMN OUTFITS.jpeg", __FILE__)), filename: "FALL FASHION OUTFIT IDEAS _ NEUTRAL AUTUMN OUTFITS.jpeg") 
pin57.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Fuzzy Long Cardigan.jpeg", __FILE__)), filename: "Fuzzy Long Cardigan.jpeg") 
pin58.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/How to put together a neutral tone outfit and nail it.jpeg", __FILE__)), filename: "How to put together a neutral tone outfit and nail it.jpeg") 
pin59.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Merlot And Cuddles Chenille Cardigan In Cream.jpeg", __FILE__)), filename: "Merlot And Cuddles Chenille Cardigan In Cream.jpeg") 
pin60.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Next in Line Biker Jacket Brown - US 6 _ Brown.jpeg", __FILE__)), filename: "Next in Line Biker Jacket Brown - US 6 _ Brown.jpeg") 
pin61.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Vintage Plaid Top Cardigan Jacket, Cream - beige _ S.jpeg", __FILE__)), filename: "Vintage Plaid Top Cardigan Jacket, Cream - beige _ S.jpeg") 
pin62.photo.attach(io: File.open(File.expand_path("../../public/images/fall-outfits/Western Denim Jacket Dark Brown - S_M _ Dark Brown.jpeg", __FILE__)), filename: "Western Denim Jacket Dark Brown - S_M _ Dark Brown.jpeg") 


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

pin63.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/9 dressed up Christmas trees that will be forever in style _ Style at Home.jpeg", __FILE__)), filename: "9 dressed up Christmas trees that will be forever in style _ Style at Home.jpeg") 
pin64.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/22 Magical Christmas Room Decor ideas Perfect for your Inner Diva!.jpeg", __FILE__)), filename: "22 Magical Christmas Room Decor ideas Perfect for your Inner Diva!.jpeg")
pin65.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/73 Christmas Decor Ideas for Your Home - Chaylor & Mads.jpeg", __FILE__)), filename: "73 Christmas Decor Ideas for Your Home - Chaylor & Mads.jpeg") 
pin66.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Christmas Decor We Are Drooling Over in 2020.jpeg", __FILE__)), filename: "Christmas Decor We Are Drooling Over in 2020.jpeg") 
pin67.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Effortless Christmas Decorations.jpeg", __FILE__)), filename: "Effortless Christmas Decorations.jpeg") 
pin68.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Green and Gold Fresh Evergreen Christmas Home Tour.jpeg", __FILE__)), filename: "Green and Gold Fresh Evergreen Christmas Home Tour.jpeg") 
pin69.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Modern and Neutral Christmas Decor Ideas - Oh Happy Joy! Journey of Motherhood.jpeg", __FILE__)), filename: "Modern and Neutral Christmas Decor Ideas - Oh Happy Joy! Journey of Motherhood.jpeg") 
pin70.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Home for the Holidays _ A peek inside our Christmas Decor - CHAMPAGNE + MACAROONS.png", __FILE__)), filename: "Home for the Holidays _ A peek inside our Christmas Decor - CHAMPAGNE + MACAROONS.png") 
pin71.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Christmas Decorating Ideas- Simple Christmas tree decor - French Country Cottage.jpeg", __FILE__)), filename: "Christmas Decorating Ideas- Simple Christmas tree decor - French Country Cottage.jpeg") 
pin72.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Three Christmas decor trends we're loving this festive season _ HouseAndHome_ie.jpeg", __FILE__)), filename: "Three Christmas decor trends we're loving this festive season _ HouseAndHome_ie.jpeg") 
pin73.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/Minimalist Elegance Christmas Decor + Video.png", __FILE__)), filename: "Minimalist Elegance Christmas Decor + Video.png") 
pin74.photo.attach(io: File.open(File.expand_path("../../public/images/christmas/White Chenille Stockings_ Christmas Red Ticking Stripe Stockings_ Family Stockings_ Shabby Chic Christmas Holiday Decor_ Farmhouse Decor.jpeg", __FILE__)), filename: "White Chenille Stockings_ Christmas Red Ticking Stripe Stockings_ Family Stockings_ Shabby Chic Christmas Holiday Decor_ Farmhouse Decor.jpeg") 

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

pin75.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Aquamarine & Diamond Ring.jpeg", __FILE__)), filename: "Aquamarine & Diamond Ring.jpeg")  
pin76.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Aruba _ Light Green Emerald Engagement Ring Smooth Thin Band.png", __FILE__)), filename: "Aruba _ Light Green Emerald Engagement Ring Smooth Thin Band.png")
pin77.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Brilliant 3_55CT Lab Created Emerald Center Engagement Ring,Minimalist Style Anniversary Ring,Promise Ring For Female,14K Yellow Gold Ring.jpeg", __FILE__)), filename: "Brilliant 3_55CT Lab Created Emerald Center Engagement Ring,Minimalist Style Anniversary Ring,Promise Ring For Female,14K Yellow Gold Ring.jpeg") 
pin78.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Brilliant Earth Rose Gold Lumiere Oval Diamond Engagement Ring.jpeg", __FILE__)), filename: "Brilliant Earth Rose Gold Lumiere Oval Diamond Engagement Ring.jpeg") 
pin79.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Comfort Fit Bezel Set Engagement Ring in 14K Yellow Gold 1_7mm Width Band (Setting Price).jpeg", __FILE__)), filename: "Comfort Fit Bezel Set Engagement Ring in 14K Yellow Gold 1_7mm Width Band (Setting Price).jpeg")
pin80.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Eliza Engagement Ring Setting - 4_5 - Custom Pre-order; Allow 6-8 weeks for delivery.jpeg", __FILE__)), filename: "Eliza Engagement Ring Setting - 4_5 - Custom Pre-order; Allow 6-8 weeks for delivery.jpeg") 
pin81.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Emerald Cut Champagne Diamond Engagement Ring In Yellow Gold.jpeg", __FILE__)), filename: "Emerald Cut Champagne Diamond Engagement Ring In Yellow Gold.jpeg") 
pin82.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Emerald Moissanite diamond ring, Emerald cut Moissanite Engagement Ring, solitaire emerald diamond ring for her, emerlad wedding ring.jpeg", __FILE__)), filename: "Emerald Moissanite diamond ring, Emerald cut Moissanite Engagement Ring, solitaire emerald diamond ring for her, emerlad wedding ring.jpeg") 
pin83.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Engagement_Kite Rutilated Quartz Ring - 14K White Gold _ 8_25.jpeg", __FILE__)), filename: "Engagement_Kite Rutilated Quartz Ring - 14K White Gold _ 8_25.jpeg") 
pin84.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Jane Engagement Ring Setting - 5 - Custom Pre-Order; Allow 6-8 weeks for delivery.jpeg", __FILE__)), filename: "Jane Engagement Ring Setting - 5 - Custom Pre-Order; Allow 6-8 weeks for delivery.jpeg") 
pin85.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Large Oval Monolith Ring.jpeg", __FILE__)), filename: "Large Oval Monolith Ring.jpeg") 
pin86.photo.attach(io: File.open(File.expand_path("../../public/images/rings/MARROW FINE _ 1_01CT DIAMOND LOZENGE CIGAR BAND.jpeg", __FILE__)), filename: "MARROW FINE _ 1_01CT DIAMOND LOZENGE CIGAR BAND.jpeg") 
pin87.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Modern Moi Et Toi Engagement Ring, Emily Ratajkowski Style Engagement Ring, Two Stone Engagement Ring.jpeg", __FILE__)), filename: "Modern Moi Et Toi Engagement Ring, Emily Ratajkowski Style Engagement Ring, Two Stone Engagement Ring.jpeg") 
pin88.photo.attach(io: File.open(File.expand_path("../../public/images/rings/Moonbeam _ Elongated Rectangle Moissanite Engagement Ring.jpeg", __FILE__)), filename: "Moonbeam _ Elongated Rectangle Moissanite Engagement Ring.jpeg")


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

pin89.photo.attach(io: File.open(File.expand_path("../../public/images/green/✌🏼🔥.jpeg", __FILE__)), filename: "✌🏼🔥.jpeg") 
pin90.photo.attach(io: File.open(File.expand_path("../../public/images/green/🌬.jpeg", __FILE__)), filename: "🌬.jpeg") 
pin91.photo.attach(io: File.open(File.expand_path("../../public/images/green/50+ Sage Green Wall Collage Kit _ Aesthetic Sage Green Photo Collage _ Matcha and Mint Green _ Pinterest Aesthetic.jpeg", __FILE__)), filename: "50+ Sage Green Wall Collage Kit _ Aesthetic Sage Green Photo Collage _ Matcha and Mint Green _ Pinterest Aesthetic.jpeg") 
pin92.photo.attach(io: File.open(File.expand_path("../../public/images/green/2010s Uk Gary Colet Poster Art Print.jpeg", __FILE__)), filename: "2010s Uk Gary Colet Poster Art Print.jpeg") 
pin93.photo.attach(io: File.open(File.expand_path("../../public/images/green/amzz on Twitter.jpeg", __FILE__)), filename: "amzz on Twitter.jpeg") 
pin94.photo.attach(io: File.open(File.expand_path("../../public/images/green/Bubble Cube Candle - Light Green - Lilac.jpeg", __FILE__)), filename: "Bubble Cube Candle - Light Green - Lilac.jpeg") 
pin95.photo.attach(io: File.open(File.expand_path("../../public/images/green/De quoi rafraîchir ta playlist 🙃.jpeg", __FILE__)), filename: "De quoi rafraîchir ta playlist 🙃.jpeg") 
pin96.photo.attach(io: File.open(File.expand_path("../../public/images/green/Fairy Shared Icon _3.jpeg", __FILE__)), filename: "Fairy Shared Icon _3.jpeg") 
pin97.photo.attach(io: File.open(File.expand_path("../../public/images/green/Matisse Print Green Leaf-Matisse-Henri Matisse-Art Exhibition Poster-Mid Century Modern Art-Home Wall Decor-Matisse Print-Matisse Poster - Canvas 24 x 36.jpeg", __FILE__)), filename: "Matisse Print Green Leaf-Matisse-Henri Matisse-Art Exhibition Poster-Mid Century Modern Art-Home Wall Decor-Matisse Print-Matisse Poster - Canvas 24 x 36.jpeg") 
pin98.photo.attach(io: File.open(File.expand_path("../../public/images/green/stella 🕊 on Twitter.jpeg", __FILE__)), filename: "stella 🕊 on Twitter.jpeg") 
pin99.photo.attach(io: File.open(File.expand_path("../../public/images/green/Superfoods™ Apple, Matcha + Kale Replenishing 2-Piece Set.jpeg", __FILE__)), filename: "Superfoods™ Apple, Matcha + Kale Replenishing 2-Piece Set.jpeg") 
pin100.photo.attach(io: File.open(File.expand_path("../../public/images/green/Wallpaper and widgets (green).jpeg", __FILE__)), filename: "Wallpaper and widgets (green).jpeg") 
pin101.photo.attach(io: File.open(File.expand_path("../../public/images/green/Photo Wall Collage Kit _ Mint Sage Green Aesthetic (Set of 77 photos) INSTANT Download _ DIGITAL printable collage kit.png", __FILE__)), filename: "Photo Wall Collage Kit _ Mint Sage Green Aesthetic (Set of 77 photos) INSTANT Download _ DIGITAL printable collage kit.png") 
pin102.photo.attach(io: File.open(File.expand_path("../../public/images/green/My Visit to the Real Monet's Garden in Giverny, France.png", __FILE__)), filename: "My Visit to the Real Monet's Garden in Giverny, France.png") 


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

pin103.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Butterfly locs hairstyles.jpeg", __FILE__)), filename: "Butterfly locs hairstyles.jpeg") 
pin104.photo.attach(io: File.open(File.expand_path("../../public/images/hair/EASY RUBBER BAND HAIRSTYLE!.jpeg", __FILE__)), filename: "EASY RUBBER BAND HAIRSTYLE!.jpeg") 
pin105.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Wand Curls Lace Front Wigs Loose Curly Human Hair Wigs 180% Density.jpeg", __FILE__)), filename: "Wand Curls Lace Front Wigs Loose Curly Human Hair Wigs 180% Density.jpeg")
pin106.photo.attach(io: File.open(File.expand_path("../../public/images/hair/👑 Hairstylist (Braidbae)🦄♐️ on Instagram_ “Braids so 🔥🔥🔥 order Sleek Af Edge Control today 💕 Atlanta april16th-21st  book via the link in my bio…”.jpeg", __FILE__)), filename: "👑 Hairstylist (Braidbae)🦄♐️ on Instagram_ “Braids so 🔥🔥🔥 order Sleek Af Edge Control today 💕 Atlanta april16th-21st  book via the link in my bio…”.jpeg") 
pin107.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Papaya Castor Scalp Massaging Serum.jpeg", __FILE__)), filename: "Papaya Castor Scalp Massaging Serum.jpeg") 
pin108.photo.attach(io: File.open(File.expand_path("../../public/images/hair/11 PRETTY Prom Hairstyles.png", __FILE__)), filename: "11 PRETTY Prom Hairstyles.png") 
pin109.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Instagram.png", __FILE__)), filename: "Instagram.png") 
pin110.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Short Curly Hairstyles_ Loose Double Buns.jpeg", __FILE__)), filename: "Short Curly Hairstyles_ Loose Double Buns.jpeg") 
pin111.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Bubble Braids, Hairstyles, Protective Styles, Curly Hair.jpeg", __FILE__)), filename: "Bubble Braids, Hairstyles, Protective Styles, Curly Hair.jpeg") 
pin112.photo.attach(io: File.open(File.expand_path("../../public/images/hair/30 Trendy Hairstyles With Bangs You Will Want To Try.png", __FILE__)), filename: "30 Trendy Hairstyles With Bangs You Will Want To Try.png") 
pin113.photo.attach(io: File.open(File.expand_path("../../public/images/hair/Stitch Braids with Designs.jpeg", __FILE__)), filename: "Stitch Braids with Designs.jpeg") 

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

pin114.photo.attach(io: File.open(File.expand_path("../../public/images/captions/100 Instagram Captions.jpeg", __FILE__)), filename: "100 Instagram Captions.jpeg")  
pin115.photo.attach(io: File.open(File.expand_path("../../public/images/captions/100 Selfie Captions.jpeg", __FILE__)), filename: "100 Selfie Captions.jpeg") 
pin116.photo.attach(io: File.open(File.expand_path("../../public/images/captions/100+ Aesthetic Captions for Instagram.jpeg", __FILE__)), filename: "100+ Aesthetic Captions for Instagram.jpeg")
pin117.photo.attach(io: File.open(File.expand_path("../../public/images/captions/500+Instagram Captions - Cute,Couples,Workout,Friendship,Cool,Sassy,One word,Short,Selfies,Adventure,Happy,Aesthetic,funny,Sunset,Fall,Fire,Beach,Dog,Savage.jpeg", __FILE__)), filename: "500+Instagram Captions - Cute,Couples,Workout,Friendship,Cool,Sassy,One word,Short,Selfies,Adventure,Happy,Aesthetic,funny,Sunset,Fall,Fire,Beach,Dog,Savage.jpeg") 
pin118.photo.attach(io: File.open(File.expand_path("../../public/images/captions/a18b1317-1ba7-4913-a604-a0191ecb72ae.jpeg", __FILE__)), filename: "a18b1317-1ba7-4913-a604-a0191ecb72ae.jpeg") 
pin119.photo.attach(io: File.open(File.expand_path("../../public/images/captions/Aesthetic captions Instagram.jpeg", __FILE__)), filename: "Aesthetic captions Instagram.jpeg") 
pin120.photo.attach(io: File.open(File.expand_path("../../public/images/captions/Best Instagram Captions For Guys - ItsAllBee _ Solo Travel & Adventure Tips.jpeg", __FILE__)), filename: "Best Instagram Captions For Guys - ItsAllBee _ Solo Travel & Adventure Tips.jpeg") 
pin121.photo.attach(io: File.open(File.expand_path("../../public/images/captions/Captions.jpeg", __FILE__)), filename: "Captions.jpeg") 
pin122.photo.attach(io: File.open(File.expand_path("../../public/images/captions/Cool Snapchat Quotes & Captions - ItsAllBee _ Solo Travel & Adventure Tips.jpeg", __FILE__)), filename: "Cool Snapchat Quotes & Captions - ItsAllBee _ Solo Travel & Adventure Tips.jpeg") 
pin123.photo.attach(io: File.open(File.expand_path("../../public/images/captions/f13d2cb0-5afb-43d6-9174-83a894f20977.jpeg", __FILE__)), filename: "f13d2cb0-5afb-43d6-9174-83a894f20977.jpeg") 
pin124.photo.attach(io: File.open(File.expand_path("../../public/images/captions/f8102342-1195-4efd-bab8-e33b56775f15.png", __FILE__)), filename: "f8102342-1195-4efd-bab8-e33b56775f15.png") 
pin125.photo.attach(io: File.open(File.expand_path("../../public/images/captions/insta captions (all parts).jpeg", __FILE__)), filename: "insta captions (all parts).jpeg") 
pin126.photo.attach(io: File.open(File.expand_path("../../public/images/captions/captions1.jpeg", __FILE__)), filename: "captions1.jpeg") 
pin127.photo.attach(io: File.open(File.expand_path("../../public/images/captions/captions2.png", __FILE__)), filename: "captions2.png") 

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

pin128.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/@aube_blue NAVER.jpeg", __FILE__)), filename: "@aube_blue NAVER.jpeg") 
pin129.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/•_fondo kawaii para tu celular_•.jpeg", __FILE__)), filename: "•_fondo kawaii para tu celular_•.jpeg") 
pin130.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/Aesthetic wallpaper🌈.jpeg", __FILE__)), filename: "Aesthetic wallpaper🌈.jpeg") 
pin131.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/aube blue Twitter.jpeg", __FILE__)), filename: "aube blue Twitter.jpeg") 
pin132.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/Bubble Tea Illustration Art Print_ Cute Kawaii Digital _ Etsy.jpeg", __FILE__)), filename: "Bubble Tea Illustration Art Print_ Cute Kawaii Digital _ Etsy.jpeg") 
pin133.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/Cute Bear wallpaper.jpeg", __FILE__)), filename: "Cute Bear wallpaper.jpeg") 
pin134.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/Cute wallpaper aesthatic.jpeg", __FILE__)), filename: "Cute wallpaper aesthatic.jpeg") 
pin135.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/life planner template.png", __FILE__)), filename: "life planner template.png") 
pin136.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/RantBook - 🌸1___Je suis quelqu'un__🌸.jpeg", __FILE__)), filename: "RantBook - 🌸1___Je suis quelqu'un__🌸.jpeg") 
pin137.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/bunny.jpeg", __FILE__)), filename: "bunny.jpeg") 
pin138.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/fondos de pantalla de anime.jpeg", __FILE__)), filename: "fondos de pantalla de anime.jpeg") 
pin139.photo.attach(io: File.open(File.expand_path("../../public/images/kawaii/Toko on Twitter.png", __FILE__)), filename: "Toko on Twitter.png") 

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

pin140.photo.attach(io: File.open(File.expand_path("../../public/images/memes/25 Memes to Melt Your Mind.jpeg", __FILE__)), filename: "25 Memes to Melt Your Mind.jpeg")  
pin141.photo.attach(io: File.open(File.expand_path("../../public/images/memes/30 Work From Home Memes That Need To Get Out More.jpeg", __FILE__)), filename: "30 Work From Home Memes That Need To Get Out More.jpeg")   
pin142.photo.attach(io: File.open(File.expand_path("../../public/images/memes/50 Ridiculously Funny Programming Memes that Every Developer HAS to See!.gif", __FILE__)), filename: "50 Ridiculously Funny Programming Memes that Every Developer HAS to See!.gif")   
pin143.photo.attach(io: File.open(File.expand_path("../../public/images/memes/50 Ridiculously Funny Programming Memes that Every Developer HAS to See!.png", __FILE__)), filename: "50 Ridiculously Funny Programming Memes that Every Developer HAS to See!.png")   
pin144.photo.attach(io: File.open(File.expand_path("../../public/images/memes/66 Funny Memes to Enjoy Over the Weekend.jpeg", __FILE__)), filename: "66 Funny Memes to Enjoy Over the Weekend.jpeg")   
pin145.photo.attach(io: File.open(File.expand_path("../../public/images/memes/How I went from enlisted Air Force to software engineer intern @Twitter.png", __FILE__)), filename: "How I went from enlisted Air Force to software engineer intern @Twitter.png")   
pin146.photo.attach(io: File.open(File.expand_path("../../public/images/memes/Joke on Software Engineers.jpeg", __FILE__)), filename: "Joke on Software Engineers.jpeg")   
pin147.photo.attach(io: File.open(File.expand_path("../../public/images/memes/MEME_.jpeg", __FILE__)), filename: "MEME_.jpeg")   
pin148.photo.attach(io: File.open(File.expand_path("../../public/images/memes/monkeyUser on Twitter.jpeg", __FILE__)), filename: "monkeyUser on Twitter.jpeg")   
pin149.photo.attach(io: File.open(File.expand_path("../../public/images/memes/Thirty-Eight Aimless Memes To Please Your Eyes.jpeg", __FILE__)), filename: "Thirty-Eight Aimless Memes To Please Your Eyes.jpeg")   
pin150.photo.attach(io: File.open(File.expand_path("../../public/images/memes/This guy speaks nothing but the truth.jpeg", __FILE__)), filename: "This guy speaks nothing but the truth.jpeg")   
pin151.photo.attach(io: File.open(File.expand_path("../../public/images/memes/Zetaplus 🇹🇬 on Twitter.jpeg", __FILE__)), filename: "Zetaplus 🇹🇬 on Twitter.jpeg")   


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

pin152.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Happy Lunar New year !!!! Similar to yesterday’s nails but Lunar New Year colors 🎎🎊🧧🐂❤️💛”.jpeg", __FILE__)), filename: "Happy Lunar New year !!!! Similar to yesterday’s nails but Lunar New Year colors 🎎🎊🧧🐂❤️💛”.jpeg") 
pin153.photo.attach(io: File.open(File.expand_path("../../public/images/nails/15 Gorgeous White Nail Design Ideas - Almond Nails.jpeg", __FILE__)), filename: "15 Gorgeous White Nail Design Ideas - Almond Nails.jpeg") 
pin154.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Byrdie.png", __FILE__)), filename: "Byrdie.png") 
pin155.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Lively Orange Press-On Nails.jpeg", __FILE__)), filename: "Lively Orange Press-On Nails.jpeg") 
pin156.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Most Beautiful Nail Designs You Will Love To wear In 2021 _ Green Swirl Nail Art.jpeg", __FILE__)), filename: "Most Beautiful Nail Designs You Will Love To wear In 2021 _ Green Swirl Nail Art.jpeg")
pin157.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Nails, Nails, Nails.jpeg", __FILE__)), filename: "Nails, Nails, Nails.jpeg") 
pin158.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Toadstool - Fire Red Creme Nail Polish, Blood Red Holiday Nails, Vegan Polish.png", __FILE__)), filename: "Toadstool - Fire Red Creme Nail Polish, Blood Red Holiday Nails, Vegan Polish.png") 
pin159.photo.attach(io: File.open(File.expand_path("../../public/images/nails/nails.jpeg", __FILE__)), filename: "nails.jpeg") 
pin160.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Chic Nude Press-On Nails.jpeg", __FILE__)), filename: "Chic Nude Press-On Nails.jpeg") 
pin161.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Ballerina Long Coffin Fake Nails - NEW- glue set18.jpeg", __FILE__)), filename: "Ballerina Long Coffin Fake Nails - NEW- glue set18.jpeg") 
pin162.photo.attach(io: File.open(File.expand_path("../../public/images/nails/fall nail inspo.jpeg", __FILE__)), filename: "fall nail inspo.jpeg") 
pin163.photo.attach(io: File.open(File.expand_path("../../public/images/nails/Modern green nail design ideas.png", __FILE__)), filename: "Modern green nail design ideas.png") 
pin164.photo.attach(io: File.open(File.expand_path("../../public/images/nails/neutral nails for fall 🖤.jpeg", __FILE__)), filename: "neutral nails for fall 🖤.jpeg") 
pin165.photo.attach(io: File.open(File.expand_path("../../public/images/nails/✨Zimbabwean Doll✨ on Twitter.jpeg", __FILE__)), filename: "✨Zimbabwean Doll✨ on Twitter.jpeg") 


saves = [[152, 165, 13],[140, 151, 12],[128, 139, 11],[114, 127,10],[103, 113,9],[89, 102,8],[75, 88,7], [63, 74,6],[52, 62,5 ],[40, 51, 4],[26, 39, 3],[12, 25, 2],[1,12,1]]


saves.each do |board|
  (board[0]...board[1]).each do |pin_id|
    Save.create!(created_at: DateTime.now, board_id: eval("board#{board[2]}").id, pin_id: eval("pin#{pin_id}").id)
  end
end

 
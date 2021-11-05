# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker' 
require 'date'

current_datetime = DateTime.now

puts Faker::TvShows::RuPaul.queen 
puts current_datetime

User.create!(username: 'demo', password: 'password', email:'demo@demo.com', age: 25)

for i in 0..25
  User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
end

Board.create!(created_at: DateTime.now, name:"Home decor Inspo", description:"",user_id:1, public:true) 

pin1 = Pin.create!(created_at: DateTime.now, title:"Plant shelf idea", user_id:20)
pin1.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg"), filename: "My Plant Shelfie + How to Achieve Your Own - xoxojackie lifestyle blog.jpeg")
pin2 = Pin.create!(created_at: DateTime.now, title:"20 Borderline Genius Ways To Spruce Up Your Bedroom", user_id:10)
pin2.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/20 Bedroom Decorating Ideas, Trends & Tips For 2021.png"), filename: "20 Bedroom Decorating Ideas, Trends & Tips For 2021.png")
pin3 = Pin.create!(created_at: DateTime.now, title:"Boho Bedroom Decor Ideas", user_id:12)
pin3.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg"), filename: "22 Boho Bedrooms You'll Want To Copy ASAP - Days Inspired.jpeg")
pin4 = Pin.create!(created_at: DateTime.now, title:"How To Design A Sustainable & Minimalist Holiday Home", user_id:5)
pin4.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/How To Design A Sustainable & Minimalist Holiday Home.jpeg"), filename: "How To Design A Sustainable & Minimalist Holiday Home.jpeg")
pin5 = Pin.create!(created_at: DateTime.now, title:"10 Beautiful Screened in Porch Ideas", user_id:6)
pin5.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/10 Beautiful Screened in Porch Ideas.png"), filename: "10 Beautiful Screened in Porch Ideas.png")
pin6 = Pin.create!(created_at: DateTime.now, title:"The New Neutrals", user_id:8)
pin6.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg"), filename: "Terracotta_ The New Gender Neutral Color - Project Nursery.jpeg")
pin7 = Pin.create!(created_at: DateTime.now, title:"How to style bookshelves", user_id:7)
pin7.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Built-in Bookshelf Styling.jpeg"), filename: "Built-in Bookshelf Styling.jpeg")
pin8 = Pin.create!(created_at: DateTime.now, title:"How I Decorated My Entryway on a Budget", user_id:1)
pin8.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/How I Decorated My Entryway on a Budget.jpeg"), filename: "How I Decorated My Entryway on a Budget.jpeg")
pin9 = Pin.create!(created_at: DateTime.now, title:"Modern Cottage Style Bedroom", user_id:1)
pin9.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png"), filename: "Modern Cottage Style Bedroom Wall Paneling Ideas - Making it in the Mountains.png")
pin10 = Pin.create!(created_at: DateTime.now, title:"Pantry Organization", user_id:1)
pin10.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Pantry cupboard inspiration!.jpeg"), filename: "Pantry cupboard inspiration!.jpeg")
pin11 = Pin.create!(created_at: DateTime.now, title:"Lookbook | Backsplash", user_id:1)
pin11.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Lookbook _ Backsplash.png"), filename: "Lookbook _ Backsplash.png")
pin12 = Pin.create!(created_at: DateTime.now, title:"Room Ideas", user_id:1)
pin12.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/60+ Aesthetic Dorm Room Ideas On A Budget.jpeg"), filename: "60+ Aesthetic Dorm Room Ideas On A Budget.jpeg")


Board.create!(created_at: DateTime.now, name:"Dinner Ideas", description:"", user_id:3, public:true) # 1,3


pin13 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Honey Balsamic Glazed Chicken", user_id:9)
pin13.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Honey Balsamic Chicken _ Evolving Table Recipe.jpeg"), filename: "Honey Balsamic Chicken _ Evolving Table Recipe.jpeg")

pin14 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Slow Cooker Pot Roast", user_id:10)
pin14.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg"), filename: "Slow Cooker BBQ Pot Roast - Mother Thyme.jpeg")

pin15 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"CROCK POT CUBED STEAK & GRAVY", user_id:12)
pin15.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Crock Pot Cubed Steak with Gravy.jpeg"), filename: "Crock Pot Cubed Steak with Gravy.jpeg")

pin16 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Stromboli", user_id:13)
pin16.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/How to Make Homemade Stromboli - Sally's Baking Addiction.png"), filename: "How to Make Homemade Stromboli - Sally's Baking Addiction.png")

pin17 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Healthy Baked Zucchini Fries with Parmesan Cheese", user_id:1)
pin17.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg"), filename: "Parmesan Zucchini Fries (Healthy and Extra Crispy!) - Rasa Malaysia.jpeg")

pin18 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Quick Spinach Pasta", user_id:4)
pin18.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg"), filename: "Creamy Spinach Artichoke Pasta {Paleo, Vegan} - %.jpeg")

pin19 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Spanish Rice", user_id:13)
pin19.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/One Pot Spanish Chicken and Rice.jpeg"), filename: "One Pot Spanish Chicken and Rice.jpeg")

pin20 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"OVEN BAKED CHICKEN PARMESAN", user_id:3)
pin20.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Baked Parmesan Chicken.jpeg"), filename: "Baked Parmesan Chicken.jpeg")

pin21 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Asian Steak Bites and Potatoes", user_id:3)
pin21.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg"), filename: "Tender Skillet Steak Bites with Crispy Potatoes - Easy Dinner Idea!.jpeg")

pin22 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"BBQ CHICKEN SLIDERS", user_id:3)
pin22.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg"), filename: "Quick & Easy BBQ Chicken Sliders - Little Broken.jpeg")

pin23 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"SLOW COOKER HONEY GARLIC CHICKEN AND VEGGIES", user_id:3)
pin23.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png"), filename: "Crockpot Slow Cooker Honey Soy Chicken and Veggies Recipe.png")

pin24 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Bang Bang Shrimp Pasta Recipe", user_id:3)
pin24.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Bang Bang Shrimp and Pasta.png"), filename: "Bang Bang Shrimp and Pasta.png")

pin25 = Pin.create!(created_at: DateTime.now, description: Faker::Food.description, title:"Baked Honey Garlic Chicken Tenders", user_id:3)
pin25.photo.attach(io: File.open("/Users/maisiebruno-tyne/Downloads/Honey Garlic Chicken Tenders {Paleo}.jpeg"), filename: "Honey Garlic Chicken Tenders {Paleo}.jpeg")

Board.create!(description:"", created_at: DateTime.now, name:"Floral Arrangements", user_id:1, public:true) # 1,3,1

Pin.create!(created_at: DateTime.now, title:"San Diego Elopement", user_id:6)
Pin.create!(created_at: DateTime.now, title:"I LOVE YOU A LATTE", user_id:6)
Pin.create!(created_at: DateTime.now, title:"Spring Flowers for Wedding", user_id:4)
Pin.create!(created_at: DateTime.now, title:"A COLOURFUL MODERN WEDDING", user_id:25)
Pin.create!(created_at: DateTime.now, title:"Cova — Light + Ladder", user_id:23)
Pin.create!(created_at: DateTime.now, title:"5 Floral Trends for 2021", user_id:20)
Pin.create!(created_at: DateTime.now, title:"Water Bamboo Flower Arrangement", user_id:21)
Pin.create!(created_at: DateTime.now, title:"Create Your Own Floral Arrangement", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Large Real Touch White Magnolia", user_id:18)
Pin.create!(created_at: DateTime.now, title:"X-Large 60 White Tulips", user_id:13)
Pin.create!(created_at: DateTime.now, title:"Amaranthus composition", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Farmhouse Style Floral", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Blooming Apricot & Blush Magnolia Branches", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Private Floral Arranging Class", user_id:1)


Board.create!(description:"", created_at: DateTime.now, name:"DIY Home Decor", user_id:3, public:true) 

Pin.create!(created_at: DateTime.now, title:"DIY Sofa Table Build", user_id:12)
Pin.create!(created_at: DateTime.now, title:"How to make a giant standing mirror for $100", user_id:21)
Pin.create!(created_at: DateTime.now, title:"Picture Ledge DIY", user_id:18)
Pin.create!(created_at: DateTime.now, title:"DIY Patio Basket Lanterns", user_id:15)
Pin.create!(created_at: DateTime.now, title:"DIY FAUX CERAMIC VASES", user_id:2)
Pin.create!(created_at: DateTime.now, title:"DIY Wall Art with Wood Shims", user_id:2)
Pin.create!(created_at: DateTime.now, title:"DIY RATTAN CABINET HACK WITH BURLAP", user_id:6)
Pin.create!(created_at: DateTime.now, title:"The Index Wall Shelf in Oak", user_id:6)
Pin.create!(created_at: DateTime.now, title:"DIY TV frame", user_id:3)
Pin.create!(created_at: DateTime.now, title:"Hidden Dresser Door", user_id:3)
Pin.create!(created_at: DateTime.now, title:"DIY Closet Makeover", user_id:3)
Pin.create!(created_at: DateTime.now, title:"DIY footed bowl", user_id:3)


Board.create!(description:"", created_at: DateTime.now, name:"Autum Outfits", user_id:3, public:true) 

Pin.create!(created_at: DateTime.now, title:"Parisian Chic", user_id:3)
Pin.create!(created_at: DateTime.now, title:"comfortable fall style", user_id:3)
Pin.create!(created_at: DateTime.now, title:"brown & black combo is so good", user_id:3)
Pin.create!(created_at: DateTime.now, title:"15 Outfits para verte chic", user_id:3)
Pin.create!(created_at: DateTime.now, title:"Dropped shoulder", user_id:3)
Pin.create!(created_at: DateTime.now, title:"Long Sleeve Lapel Loose Plaid", user_id:5)
Pin.create!(created_at: DateTime.now, title:"Lorna luxe brown check", user_id:5)
Pin.create!(created_at: DateTime.now, title:"Long Sleeve Button Down", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Womens Turtleneck", user_id:8)
Pin.create!(created_at: DateTime.now, title:"The Fall Trends You’re Probably Missing", user_id:9)
Pin.create!(created_at: DateTime.now, title:"whatemwore on LTK", user_id:9)


Board.create!(description:"", created_at: DateTime.now, name:"Christmas Decor Ideas", user_id:3, public:true) 

Pin.create!(created_at: DateTime.now, title:"Christmas Tour - Home Bunch", user_id:3)
Pin.create!(created_at: DateTime.now, title:"Style Scouting: Vol. 24", user_id:3)
Pin.create!(created_at: DateTime.now, title:"35 Pretty Christmas Living", user_id:3)
Pin.create!(created_at: DateTime.now, title:"97 Farmhouse Christmas Decor", user_id:3)
Pin.create!(created_at: DateTime.now, title:"Christmas Tree Ideas and Decor Trends for 2021", user_id:10)
Pin.create!(created_at: DateTime.now, title:"CHRISTMAS TIRE ORNAMENTS", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Christmas Mantel", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Quick Christmas Table Centerpiece", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Woodland Christmas Home Tour", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Simple and Natural Christmas Decor", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Christmas Decor We Are Drooling Over", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Christmas Home Tour 2020", user_id:19)


Board.create!(description:"", created_at: DateTime.now, name:"Engagement Rings", user_id:1, public:true) 

Pin.create!(created_at: DateTime.now, title:"Marquise Cut Moissanite", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Round Pave Engagement Ring", user_id:19)
Pin.create!(created_at: DateTime.now, title:"Luxe Elodie Diamond", user_id:19)
Pin.create!(created_at: DateTime.now, title:"1 Carat Oval Hidden Halo Style", user_id:22)
Pin.create!(created_at: DateTime.now, title:"Anne Engagement Ring", user_id:22)
Pin.create!(created_at: DateTime.now, title:"Twisted Band 0.8 carat Lab Diamond ", user_id:22)
Pin.create!(created_at: DateTime.now, title:"Oval Green Blue Sapphire", user_id:22)
Pin.create!(created_at: DateTime.now, title:"WHITE RADIANT HALO PAVE DIAMOND RING", user_id:22)
Pin.create!(created_at: DateTime.now, title:"Brilliant Earth Viviana Oval Diamond Engagement Ring", user_id:14)
Pin.create!(created_at: DateTime.now, title:"Juno Ring with White", user_id:14)
Pin.create!(created_at: DateTime.now, title:"Vintage Round Engagement Ring Twisted Band", user_id:14)
Pin.create!(created_at: DateTime.now, title:"2.20 ct Round Brilliant Cut", user_id:14)
Pin.create!(created_at: DateTime.now, title:"Vintage Scroll Pattern Engraved Diamond Engagement Ring", user_id:22)
Pin.create!(created_at: DateTime.now, title:"Radiant cut engagement ring", user_id:14)


Board.create!(description:"", created_at: DateTime.now, name:"Green Aesthetic", user_id:7, public:true) 

Pin.create!(created_at: DateTime.now, title:"sage green collage kit", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Matisse Print Green Leaf", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Photo Wall Collage Kit", user_id:7)
Pin.create!(created_at: DateTime.now, title:"My Visit to the Real Monet's Garden in Giverny, France", user_id:7)
Pin.create!(created_at: DateTime.now, title:"fave green aesthetic <3", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Abstract Faces Wallpaper Green / Gold Holden 12990", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Aesthetics black and green", user_id:7)
Pin.create!(created_at: DateTime.now, title:"pastel green notebook", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Art Print: Green Butterfly Study, 19x13in.", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Fabric Forest Green and White", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Sage Green and White", user_id:10)
Pin.create!(created_at: DateTime.now, title:"vintage indie poster pack", user_id:10)
Pin.create!(created_at: DateTime.now, title:"green heart wallpaper", user_id:10)
Pin.create!(created_at: DateTime.now, title:"Flowering Meadow, Dandelion", user_id:9)


Board.create!(description:"", created_at: DateTime.now, name:"Hairstyles", user_id:1, public:true) 

Pin.create!(created_at: DateTime.now, title:"Long Butterfly Locs", user_id:9)
Pin.create!(created_at: DateTime.now, title:"Easy rubber band hairstyle", user_id:9)
Pin.create!(created_at: DateTime.now, title:"Wand Curls Lace Front Wigs", user_id:9)
Pin.create!(created_at: DateTime.now, title:"Sleek AF Braid & Edge", user_id:9)
Pin.create!(created_at: DateTime.now, title:"Papaya Castor Scalp Massaging Serum", user_id:9)
Pin.create!(created_at: DateTime.now, title:"11 Pretty Prom Hairstyles", user_id:9)
Pin.create!(created_at: DateTime.now, title:"Back To School Hairstyles For Teens", user_id:12)
Pin.create!(created_at: DateTime.now, title:"Short Curly Hairstyles: Loose Double Buns", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Easy Bubble Braid Hairstyle", user_id:12)
Pin.create!(created_at: DateTime.now, title:"30 Trendy Hairstyles With Bangs You Will Want To Try", user_id:12)
Pin.create!(created_at: DateTime.now, title:"EASY BRAIDED PONYTAIL HAIRSTYLE SPRING 2021 🌷", user_id:11)


Board.create!(description:"", created_at: DateTime.now, name:"Instagram Captions", user_id:7, public:true) 

Pin.create!(created_at: DateTime.now, title:"100 Insta Captions For Girls", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Cool Snapchat Quotes & Captions", user_id:7)
Pin.create!(created_at: DateTime.now, title:"100 Instagram Captions", user_id:7)
Pin.create!(created_at: DateTime.now, title:"more captions✨", user_id:7)
Pin.create!(created_at: DateTime.now, title:"Cute and Aesthetic Instagram Captions", user_id:7)
Pin.create!(created_at: DateTime.now, title:"INSTAGRAM CAPTIONS", user_id:7)
Pin.create!(created_at: DateTime.now, title:"80 Sunset Captions For Instagram", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Best Instagram Captions", user_id:20)
Pin.create!(created_at: DateTime.now, title:"Fall captions for instagram 2021", user_id:20)
Pin.create!(created_at: DateTime.now, title:"50 + Instagram Caption Ideas | Birthdays, Selfies, Summer", user_id:20)
Pin.create!(created_at: DateTime.now, title:"Quotes For Instagram Captions", user_id:12)
Pin.create!(created_at: DateTime.now, title:"Savage Instagram Captions For Guys", user_id:12)
Pin.create!(created_at: DateTime.now, title:"Instagram CAPTIONS FOR PICTURES", user_id:12)
Pin.create!(created_at: DateTime.now, title:"Instagram Captions", user_id:3)



Board.create!(description:"", created_at: DateTime.now, name:"Kawaii Wallpapers", user_id:7, public:true) 

Pin.create!(created_at: DateTime.now, title:"CUTE", user_id:7)
Pin.create!(created_at: DateTime.now, title:"| 𝘩 𝘰 𝘮 𝘦 - template!", user_id:7)
Pin.create!(created_at: DateTime.now, title:"RantBook - 🌸1.//Je suis quelqu'un//🌸", user_id:7)
Pin.create!(created_at: DateTime.now, title:"aube blue 오브블루 on Twitter", user_id:13)
Pin.create!(created_at: DateTime.now, title:"@aube_blue NAVER", user_id:13)
Pin.create!(created_at: DateTime.now, title:"life planner ･ﾟ✧ - template", user_id:13)
Pin.create!(created_at: DateTime.now, title:"fondos de pantalla de anime", user_id:13)
Pin.create!(created_at: DateTime.now, title:"Illustration lovely style", user_id:10)
Pin.create!(created_at: DateTime.now, title:"マイメロ 待ち受け」の検索結果", user_id:12)
Pin.create!(created_at: DateTime.now, title:"•~fondo kawaii para tu celular~•", user_id:12)
Pin.create!(created_at: DateTime.now, title:"Free Lock Screen Wallpaper by Bymunbear", user_id:12)
Pin.create!(created_at: DateTime.now, title:"💖✨", user_id:20)


Board.create!(description:"", created_at: DateTime.now, name:"mEmeS", user_id:7, public:true) 

Pin.create!(created_at: DateTime.now, title:"Funny relatable!", user_id:2)
Pin.create!(created_at: DateTime.now, title:"yes <3", user_id:2)
Pin.create!(created_at: DateTime.now, title:"Importantance of Friendship", user_id:2)
Pin.create!(created_at: DateTime.now, title:"meme", user_id:15)
Pin.create!(created_at: DateTime.now, title:"How I fix the WiFi", user_id:15)
Pin.create!(created_at: DateTime.now, title:"Hilliorus Memes", user_id:15)
Pin.create!(created_at: DateTime.now, title:"best bet to lose to", user_id:17)
Pin.create!(created_at: DateTime.now, title:"74 Primo Marvel Memes & Posts", user_id:17)
Pin.create!(created_at: DateTime.now, title:"21 Funny Loki Memes to Read When You've Got the Time", user_id:17)
Pin.create!(created_at: DateTime.now, title:'The Dog Like "he has a point"', user_id:17)
Pin.create!(created_at: DateTime.now, title:"I can’t this is too funny 😂", user_id:17)
Pin.create!(created_at: DateTime.now, title:"I Mean... You Tried..?", user_id:20)


Board.create!(description:"", created_at: DateTime.now, name:"Nail design inspo", user_id:1, public:true) 

Pin.create!(created_at: DateTime.now, title:"PRETTY & CHIC NAIL TRENDS AND DESIGNS FOR FALL 2021", user_id:8)
Pin.create!(created_at: DateTime.now, title:"Swirls", user_id:8)
Pin.create!(created_at: DateTime.now, title:"Colorful retro flowers nail", user_id:8)
Pin.create!(created_at: DateTime.now, title:"24Pcs Long Coffin False Nails", user_id:8)
Pin.create!(created_at: DateTime.now, title:"Fun Nail Ideas", user_id:8)
Pin.create!(created_at: DateTime.now, title:"Rings to match September fall nails in 2021", user_id:8)
Pin.create!(created_at: DateTime.now, title:"French Tip Coffin", user_id:19)
Pin.create!(created_at: DateTime.now, title:"29 Cute Short Gel Nails Designs & Ideas", user_id:19)
Pin.create!(created_at: DateTime.now, title:"♡luna press on nails♡", user_id:1)
Pin.create!(created_at: DateTime.now, title:"DIY Dip Powder Nails", user_id:1)
Pin.create!(created_at: DateTime.now, title:"TRENDY NAIL DESIGNS FOR SPRING 2021", user_id:1)
Pin.create!(created_at: DateTime.now, title:"The Best Nail Art Trends", user_id:1)
Pin.create!(created_at: DateTime.now, title:"30+ Summer Floral Nail Designs", user_id:1)
Pin.create!(created_at: DateTime.now, title:"Black Nail Designs: Matte + Marbled", user_id:1)


saves = [[151, 165,13],[140, 151,12],[128, 139,11],[114, 127,10],[103, 113,9],[89, 102,8],[75, 88,7], [63, 74,6],[52, 62,5 ],[40, 51, 4],[26, 39, 3],[12, 25, 2],[1,12,1]]


saves.each do |board|
  (board[0]...board[1]).each do |pin_id|
    Save.create!(created_at: DateTime.now, board_id:board[2], pin_id: pin_id)
  end
end

 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker' 

puts Faker::TvShows::RuPaul.queen 

User.create!(username: 'demo', password: 'password', email:'demo@demo.com', age: 25)

for i in 0..25
  User.create!(username: Faker::Games::Pokemon.unique.name, name: Faker::TvShows::RuPaul.unique.queen, password: 'password', email: Faker::Internet.unique.email, age: 25 )
end


Board.create!(name:"Home decor Inspo", user_id:1, public:true)

Pin.create!(title:"Plant shelf idea", user_id:20)
Pin.create!(title:"20 Borderline Genius Ways To Spruce Up Your Bedroom", user_id:10)
Pin.create!(title:"Boho Bedroom Decor Ideas", user_id:12)
Pin.create!(title:"How To Design A Sustainable & Minimalist Holiday Home", user_id:5)
Pin.create!(title:"10 Beautiful Screened in Porch Ideas", user_id:6)
Pin.create!(title:"The New Neutrals", user_id:8)
Pin.create!(title:"How to style bookshelves", user_id:7)

Pin.create!(title:"How I Decorated My Entryway on a Budget", user_id:1)
Pin.create!(title:"Modern Cottage Style Bedroom", user_id:1)
Pin.create!(title:"Pantry Organization", user_id:1)
Pin.create!(title:"Lookbook | Backsplash", user_id:1)
Pin.create!(title:"Room Ideas", user_id:1)

Board.create!(name:"Dinner Ideas", user_id:3, public:true)

Pin.create!(description: Faker::Food.description, title:"Honey Balsamic Glazed Chicken", user_id:9)
Pin.create!(description: Faker::Food.description, title:"Slow Cooker Pot Roast", user_id:10)
Pin.create!(description: Faker::Food.description, title:"CROCK POT CUBED STEAK & GRAVY", user_id:12)
Pin.create!(description: Faker::Food.description, title:"Stromboli", user_id:13)
Pin.create!(description: Faker::Food.description, title:"Healthy Baked Zucchini Fries with Parmesan Cheese", user_id:1)
Pin.create!(description: Faker::Food.description, title:"Quick Spinach Pasta", user_id:4)
Pin.create!(description: Faker::Food.description, title:"Spanish Rice", user_id:13)

Pin.create!(description: Faker::Food.description, title:"OVEN BAKED CHICKEN PARMESAN", user_id:3)
Pin.create!(description: Faker::Food.description, title:"Asian Steak Bites and Potatoes", user_id:3)
Pin.create!(description: Faker::Food.description, title:"BBQ CHICKEN SLIDERS", user_id:3)
Pin.create!(description: Faker::Food.description, title:"SLOW COOKER HONEY GARLIC CHICKEN AND VEGGIES", user_id:3)
Pin.create!(description: Faker::Food.description, title:"Bang Bang Shrimp Pasta Recipe", user_id:3)
Pin.create!(description: Faker::Food.description, title:"Baked Honey Garlic Chicken Tenders", user_id:3)

Board.create!(name:"Floral Arrangements", user_id:1, public:true)

Pin.create!(title:"San Diego Elopement", user_id:6)
Pin.create!(title:"I LOVE YOU A LATTE", user_id:6)
Pin.create!(title:"Spring Flowers for Wedding", user_id:4)
Pin.create!(title:"A COLOURFUL MODERN WEDDING", user_id:25)
Pin.create!(title:"Cova — Light + Ladder", user_id:23)
Pin.create!(title:"5 Floral Trends for 2021", user_id:20)
Pin.create!(title:"Water Bamboo Flower Arrangement", user_id:21)

Pin.create!(title:"Create Your Own Floral Arrangement", user_id:19)
Pin.create!(title:"Large Real Touch White Magnolia", user_id:18)
Pin.create!(title:"X-Large 60 White Tulips", user_id:13)
Pin.create!(title:"Amaranthus composition", user_id:1)
Pin.create!(title:"Farmhouse Style Floral", user_id:1)
Pin.create!(title:"Blooming Apricot & Blush Magnolia Branches", user_id:1)
Pin.create!(title:"Private Floral Arranging Class", user_id:1)


Board.create!(name:"DIY Home Decor", user_id:3, public:true)
Pin.create!(title:"DIY Sofa Table Build", user_id:12)
Pin.create!(title:"How to make a giant standing mirror for $100", user_id:21)
Pin.create!(title:"Picture Ledge DIY", user_id:18)
Pin.create!(title:"DIY Patio Basket Lanterns", user_id:15)
Pin.create!(title:"DIY FAUX CERAMIC VASES", user_id:2)
Pin.create!(title:"DIY Wall Art with Wood Shims", user_id:2)
Pin.create!(title:"DIY RATTAN CABINET HACK WITH BURLAP", user_id:6)
Pin.create!(title:"The Index Wall Shelf in Oak", user_id:6)
Pin.create!(title:"DIY TV frame", user_id:3)
Pin.create!(title:"Hidden Dresser Door", user_id:3)
Pin.create!(title:"DIY Closet Makeover", user_id:3)
Pin.create!(title:"DIY footed bowl", user_id:3)


Board.create!(name:"Autum Outfits", user_id:3, public:true)

Pin.create!(title:"Parisian Chic", user_id:3)
Pin.create!(title:"comfortable fall style", user_id:3)
Pin.create!(title:"brown & black combo is so good", user_id:3)
Pin.create!(title:"15 Outfits para verte chic", user_id:3)
Pin.create!(title:"Dropped shoulder", user_id:3)
Pin.create!(title:"Long Sleeve Lapel Loose Plaid", user_id:5)
Pin.create!(title:"Lorna luxe brown check", user_id:5)
Pin.create!(title:"Long Sleeve Button Down", user_id:7)
Pin.create!(title:"Womens Turtleneck", user_id:8)
Pin.create!(title:"The Fall Trends You’re Probably Missing", user_id:9)
Pin.create!(title:"whatemwore on LTK", user_id:9)


Board.create!(name:"Christmas Decor Ideas", user_id:3, public:true)

Pin.create!(title:"Christmas Tour - Home Bunch", user_id:3)
Pin.create!(title:"Style Scouting: Vol. 24", user_id:3)
Pin.create!(title:"35 Pretty Christmas Living", user_id:3)
Pin.create!(title:"97 Farmhouse Christmas Decor", user_id:3)
Pin.create!(title:"Christmas Tree Ideas and Decor Trends for 2021", user_id:10)
Pin.create!(title:"CHRISTMAS TIRE ORNAMENTS", user_id:10)
Pin.create!(title:"Christmas Mantel", user_id:19)
Pin.create!(title:"Quick Christmas Table Centerpiece", user_id:19)
Pin.create!(title:"Woodland Christmas Home Tour", user_id:19)
Pin.create!(title:"Simple and Natural Christmas Decor", user_id:10)
Pin.create!(title:"Christmas Decor We Are Drooling Over", user_id:19)
Pin.create!(title:"Christmas Home Tour 2020", user_id:19)


Board.create!(name:"Engagement Rings", user_id:1, public:true)

Pin.create!(title:"Marquise Cut Moissanite", user_id:19)
Pin.create!(title:"Round Pave Engagement Ring", user_id:19)
Pin.create!(title:"Luxe Elodie Diamond", user_id:19)
Pin.create!(title:"1 Carat Oval Hidden Halo Style", user_id:22)
Pin.create!(title:"Anne Engagement Ring", user_id:22)
Pin.create!(title:"Twisted Band 0.8 carat Lab Diamond ", user_id:22)
Pin.create!(title:"Oval Green Blue Sapphire", user_id:22)
Pin.create!(title:"WHITE RADIANT HALO PAVE DIAMOND RING", user_id:22)

Pin.create!(title:"Brilliant Earth Viviana Oval Diamond Engagement Ring", user_id:14)
Pin.create!(title:"Juno Ring with White", user_id:14)
Pin.create!(title:"Vintage Round Engagement Ring Twisted Band", user_id:14)
Pin.create!(title:"2.20 ct Round Brilliant Cut", user_id:14)
Pin.create!(title:"Vintage Scroll Pattern Engraved Diamond Engagement Ring", user_id:22)
Pin.create!(title:"Radiant cut engagement ring", user_id:14)


Board.create!(name:"Green Aesthetic", user_id:7, public:true)

Pin.create!(title:"sage green collage kit", user_id:7)
Pin.create!(title:"Matisse Print Green Leaf", user_id:7)
Pin.create!(title:"Photo Wall Collage Kit", user_id:7)
Pin.create!(title:"My Visit to the Real Monet's Garden in Giverny, France", user_id:7)
Pin.create!(title:"fave green aesthetic <3", user_id:7)
Pin.create!(title:"Abstract Faces Wallpaper Green / Gold Holden 12990", user_id:7)
Pin.create!(title:"Aesthetics black and green", user_id:7)
Pin.create!(title:"pastel green notebook", user_id:10)
Pin.create!(title:"Art Print: Green Butterfly Study, 19x13in.", user_id:10)
Pin.create!(title:"Fabric Forest Green and White", user_id:10)
Pin.create!(title:"Sage Green and White", user_id:10)
Pin.create!(title:"vintage indie poster pack", user_id:10)
Pin.create!(title:"green heart wallpaper", user_id:10)
Pin.create!(title:"Flowering Meadow, Dandelion", user_id:9)




Board.create!(name:"Hairstyles", user_id:1, public:true)
Pin.create!(title:"Long Butterfly Locs", user_id:9)
Pin.create!(title:"Easy rubber band hairstyle", user_id:9)
Pin.create!(title:"Wand Curls Lace Front Wigs", user_id:9)
Pin.create!(title:"Sleek AF Braid & Edge", user_id:9)
Pin.create!(title:"Papaya Castor Scalp Massaging Serum", user_id:9)
Pin.create!(title:"11 Pretty Prom Hairstyles", user_id:9)

Pin.create!(title:"Back To School Hairstyles For Teens", user_id:12)
Pin.create!(title:"Short Curly Hairstyles: Loose Double Buns", user_id:1)
Pin.create!(title:"Easy Bubble Braid Hairstyle", user_id:12)
Pin.create!(title:"30 Trendy Hairstyles With Bangs You Will Want To Try", user_id:12)
Pin.create!(title:"EASY BRAIDED PONYTAIL HAIRSTYLE SPRING 2021 🌷", user_id:11)

Board.create!(name:"Instagram Captions", user_id:7, public:true)

Pin.create!(title:"100 Insta Captions For Girls", user_id:7)
Pin.create!(title:"Cool Snapchat Quotes & Captions", user_id:7)
Pin.create!(title:"100 Instagram Captions", user_id:7)
Pin.create!(title:"more captions✨", user_id:7)
Pin.create!(title:"Cute and Aesthetic Instagram Captions", user_id:7)
Pin.create!(title:"INSTAGRAM CAPTIONS", user_id:7)
Pin.create!(title:"80 Sunset Captions For Instagram", user_id:1)
Pin.create!(title:"Best Instagram Captions", user_id:20)
Pin.create!(title:"Fall captions for instagram 2021", user_id:20)
Pin.create!(title:"50 + Instagram Caption Ideas | Birthdays, Selfies, Summer", user_id:20)
Pin.create!(title:"Quotes For Instagram Captions", user_id:12)
Pin.create!(title:"Savage Instagram Captions For Guys", user_id:12)
Pin.create!(title:"Instagram CAPTIONS FOR PICTURES", user_id:12)
Pin.create!(title:"Instagram Captions", user_id:3)



Board.create!(name:"Kawaii Wallpapers", user_id:7, public:true)

Pin.create!(title:"CUTE", user_id:7)
Pin.create!(title:"| 𝘩 𝘰 𝘮 𝘦 - template!", user_id:7)
Pin.create!(title:"RantBook - 🌸1.//Je suis quelqu'un//🌸", user_id:7)
Pin.create!(title:"aube blue 오브블루 on Twitter", user_id:13)
Pin.create!(title:"@aube_blue NAVER", user_id:13)
Pin.create!(title:"life planner ･ﾟ✧ - template", user_id:13)
Pin.create!(title:"fondos de pantalla de anime", user_id:13)
Pin.create!(title:"Illustration lovely style", user_id:10)
Pin.create!(title:"マイメロ 待ち受け」の検索結果", user_id:12)
Pin.create!(title:"•~fondo kawaii para tu celular~•", user_id:12)
Pin.create!(title:"Free Lock Screen Wallpaper by Bymunbear", user_id:12)
Pin.create!(title:"💖✨", user_id:20)

Board.create!(name:"mEmeS", user_id:7, public:true)

Pin.create!(title:"Funny relatable!", user_id:2)
Pin.create!(title:"yes <3", user_id:2)
Pin.create!(title:"Importantance of Friendship", user_id:2)
Pin.create!(title:"meme", user_id:15)
Pin.create!(title:"How I fix the WiFi", user_id:15)
Pin.create!(title:"Hilliorus Memes", user_id:15)
Pin.create!(title:"best bet to lose to", user_id:17)
Pin.create!(title:"74 Primo Marvel Memes & Posts", user_id:17)
Pin.create!(title:"21 Funny Loki Memes to Read When You've Got the Time", user_id:17)
Pin.create!(title:'The Dog Like "he has a point"', user_id:17)
Pin.create!(title:"I can’t this is too funny 😂", user_id:17)
Pin.create!(title:"I Mean... You Tried..?", user_id:20)


Board.create!(name:"Nail design inspo", user_id:1, public:true)

Pin.create!(title:"PRETTY & CHIC NAIL TRENDS AND DESIGNS FOR FALL 2021", user_id:8)
Pin.create!(title:"Swirls", user_id:8)
Pin.create!(title:"Colorful retro flowers nail", user_id:8)
Pin.create!(title:"24Pcs Long Coffin False Nails", user_id:8)
Pin.create!(title:"Fun Nail Ideas", user_id:8)
Pin.create!(title:"Rings to match September fall nails in 2021", user_id:8)
Pin.create!(title:"French Tip Coffin", user_id:19)
Pin.create!(title:"29 Cute Short Gel Nails Designs & Ideas", user_id:19)
Pin.create!(title:"♡luna press on nails♡", user_id:1)
Pin.create!(title:"DIY Dip Powder Nails", user_id:1)
Pin.create!(title:"TRENDY NAIL DESIGNS FOR SPRING 2021", user_id:1)
Pin.create!(title:"The Best Nail Art Trends", user_id:1)
Pin.create!(title:"30+ Summer Floral Nail Designs", user_id:1)
Pin.create!(title:"Black Nail Designs: Matte + Marbled", user_id:1)





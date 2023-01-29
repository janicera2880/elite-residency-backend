puts "🌱 Seeding spices..."

puts "Deleting old data..."

Listing.destroy_all
Subdivision.destroy_all

# Seed your database here

puts "Seeding subdivisions..."

s1 = Subdivision.create(image_url:"https://www.tripointehomes.com/wp-content/uploads/Westridge-Cove-Rec-Center_Tri-Pointe-24.jpg", name:"The Groves at The Woodlands", community_type:"Luxury Homes", overview:"Tucked away in Conroe, TX, just north of The Woodlands, is a new community where a peaceful, idyllic lifestyle with plenty of small-town charm beckons.")
s2 = Subdivision.create(image_url:"https://images.axios.com/rXru44v_tr28L9KYD6IctXbsBLA=/971x0:4611x3640/1366x1366/2021/09/13/1631572327019.jpg", name:"Sienna Pointe at Cypress", community_type:"Resort Community", overview:"Our homesites are now selling at this serene, nature-filled Cypress, TX community. With a variety of our popular home designs, you will be able to tailor your plan to your specific needs.")
s3 = Subdivision.create(image_url:"https://sanctuarybayshore.com/wp-content/uploads/2018/10/sanctuary_2story_fin_1200x720.jpg", name:"Lakeview Heights at The Lake Travis", community_type:"Condominium", overview:"Exceptional waterfront living is not just about the spectacular views and stunning sunsets, an array of resort-style amenities await just steps from your front door and no more than a golf cart ride away.")
s4 = Subdivision.create(image_url:"https://thumbnails.showcaseidx.com/original/photos.harstatic.com/206187014/hr/img-1.jpeg", name:"Costa Bella in River Oaks", community_type:"Exclusive Resort", overview:"Life at The Village of River Oaks places you among many of finest amenities. Here, you are steps away from the prestigious Country Club and Shopping Center, eclectic shops and unique dining options.")
puts "Seeding listings..."
l1 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/c1b6d498d8a7819d0c491a309939455a-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 2599000.00, year_built: 2004, 
storey: 2, bedroom: 5, bathroom: 7, garage: 5, building_size: 8267, lot_size: 10820, architecture_style: "Mediterranean", pool: "True", subdivision_id: s1.id )
l2 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/8affaa18ea2212c7fe76d40a386df8d9-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 580999.00, year_built: 2022, 
storey: 2, bedroom: 4, bathroom: 4, garage: 2, building_size: 3700, lot_size: 6664, architecture_style: "Contemporary", pool: "False", subdivision_id: s2.id )
l3 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/b77a8ed81730115b4d56a465abf64350-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 7000.00, year_built: 2008, 
storey: 1, bedroom: 4, bathroom: 5, garage: 3, building_size: 4465, lot_size: 4465, architecture_style: "Condominium", pool: "False", subdivision_id: s3.id )
l4 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/22ad2c616b2a330cf4edcdeb2d785e25-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 5995000.00, year_built: 2021, 
storey: 2, bedroom: 5, bathroom: 5, garage: 3, building_size: 4863, lot_size: 21560, architecture_style: "Modern Traditional", pool: "True", subdivision_id: s2.id )
l5 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/d74c9a4f07232fe31abede6802e15df0-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 6195000.00, year_built: 2012, 
storey: 2, bedroom: 6, bathroom: 8, garage: 4, building_size: 10368, lot_size: 43560, architecture_style: "Spanish Modern", pool: "True", subdivision_id: s4.id )
l6 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/24ba4ef1c42acbbbbc448c47916ebf9d-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 4950000.00, year_built: 2001, 
storey: 2, bedroom: 8, bathroom: 6, garage: 3, building_size: 5597, lot_size: 55695, architecture_style: "Modern", pool: "True", subdivision_id: s4.id )
l7 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/dd711e0af21ecb92fab2da746d137529-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 3999999.00, year_built: 2005, 
storey: 3, bedroom: 6, bathroom: 10, garage: 6, building_size: 13000, lot_size: 45025, architecture_style: "Neoclassical", pool: "True", subdivision_id: s1.id )
l8 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/ece7f6dafdbaebedda658c9c24a16c85-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 5300.00, year_built: 2009, 
storey: 1, bedroom: 3, bathroom: 4, garage: 3, building_size: 1050, lot_size: 3789, architecture_style: "Condominium", pool: "False", subdivision_id: s3.id )
l9 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/7fc5be9cdf2742fe3130e3ed212cab9b-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 2795000.00, year_built: 2002, 
storey: 2, bedroom: 4, bathroom: 6, garage: 3, building_size: 7600, lot_size: 21600, architecture_style: "Southwestern", pool: "True", subdivision_id: s2.id )
l10 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/00d047b61947f731958d994c1d9b7b2d-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 2150000.00, year_built: 2019, 
storey: 2, bedroom: 5, bathroom: 5, garage: 3, building_size: 5125, lot_size: 30500, architecture_style: "Modern Traditional", pool: "True", subdivision_id: s4.id )
l11 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/95548a1fd3e3724aa826a79093b9f38f-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 3195000.00, year_built: 2007, 
storey: 2, bedroom: 5, bathroom: 6, garage: 4, building_size: 6125, lot_size: 45500, architecture_style: "Tuscan", pool: "True", subdivision_id: s2.id )
l12 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/42a65a26a8adff67be3b6b1e494066a8-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 1240000.00, year_built: 2020, 
storey: 2, bedroom: 4, bathroom: 4, garage: 2, building_size: 3719, lot_size: 9147, architecture_style: "Modern Traditional", pool: "False", subdivision_id: s1.id )
l13 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/e84c779d4ca7e4aa7745990aed70d80a-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 153300.00, year_built: 2014, 
storey: 1, bedroom: 2, bathroom: 2, garage: 2, building_size: 3719, lot_size: 9147, architecture_style: "Condominium", pool: "False", subdivision_id: s3.id )
l14 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/99d2269bffbefa8e2d7aada1960a2ea2-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 1050000.00, year_built: 2018, 
storey: 2, bedroom: 4, bathroom: 3, garage: 2, building_size: 3610, lot_size: 8150, architecture_style: "Contemporary", pool: "True", subdivision_id: s2.id )
l15 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/f65f5d23e0d37ae65d07652338714d85-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 2395000.00, year_built: 2011, 
storey: 2, bedroom: 4, bathroom: 5, garage: 4, building_size: 4910, lot_size: 10500, architecture_style: "Modern Traditional", pool: "True", subdivision_id: s1.id )
l16 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/f133b1b8b5ea60779049c02c6e773317-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 6300.00, year_built: 2017, 
storey: 1, bedroom: 3, bathroom: 3, garage: 3, building_size: 3700, lot_size: 3700, architecture_style: "Condominium", pool: "False", subdivision_id: s3.id )
l17 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/fe949092c6b02d57100da3a4b05120f8-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 6950000.00, year_built: 2013, 
storey: 2, bedroom: 5, bathroom: 7, garage: 5, building_size: 8200, lot_size: 55120, architecture_style: "Mediterranean", pool: "True", subdivision_id: s1.id )
l18 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/1394913444741082914cf32c81b220f8-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 5579500.00, year_built: 1998, 
storey: 2, bedroom: 5, bathroom: 9, garage: 3, building_size: 7870, lot_size: 32100, architecture_style: "Traditional", pool: "True", subdivision_id: s4.id )
l19 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/1293aeda302447853829669a899898e4-uncropped_scaled_within_1536_1152.webp", status: "True", list_price: 3850000.00, year_built: 2000, 
storey: 2, bedroom: 4, bathroom: 6, garage: 3, building_size: 8239, lot_size: 12100, architecture_style: "Tuscan", pool: "True", subdivision_id: s2.id )
l20 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/109d19d1aeb643d43b687920277d839f-uncropped_scaled_within_1536_1152.webp", status: "False", list_price: 1050000.00, year_built: 2022, 
storey: 2, bedroom: 5, bathroom: 6, garage: 3, building_size: 4318, lot_size: 9058, architecture_style: "Contemporary", pool: "False", subdivision_id: s1.id )
puts "✅ Done seeding!"

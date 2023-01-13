puts "🌱 Seeding spices..."

puts "Deleting old data..."
Account.destroy_all
Listing.destroy_all
Subdivision.destroy_all

# Seed your database here
puts "Seeding accounts..."

a1 = Account.create(name:"Savannah Smith", email: "savsmith@outlook.com")
a2 = Account.create(name:"Alex Ramirez", email: "alexram85@gmail.com")
a3 = Account.create(name:"Destiny Chiu", email: "deschiu00@outlook.com")
a4 = Account.create(name:"Tyrone James", email: "tyronejames22@hotmail.com")

puts "Seeding subdivisions..."

s1 = Subdivision.create(name:"The Groves", community_type:"Luxury Homes")
s2 = Subdivision.create(name:"Sienna", community_type:"Resort")
s3 = Subdivision.create(name:"Lakeview Heights", community_type:"Condo")

puts "Seeding listings..."
l1 = 
Listing.create(image_url:"https://photos.zillowstatic.com/fp/c1b6d498d8a7819d0c491a309939455a-uncropped_scaled_within_1536_1152.webp", list_price: 2599000.00, year_built: 2004, 
storey: 2, bedroom: 5, bathroom: 7, garage: 5, building_size: 8267, lot_size: 10820, architecture_style: "Mediterranean", pool: "Yes", account_id: a1.id, subdivision_id: s1.id )

puts "✅ Done seeding!"

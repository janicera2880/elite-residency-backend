puts "🌱 Seeding spices..."

# Seed your database here

savannah = Account.create(name:"Savannah Smith", email: "savsmith@outlook.com")

Subdivision.create(name:"The Groves", community_type:"Luxury Homes")
Subdivision.create(name:"Sienna", community_type:"Resort")
Subdivision.create(name:"Lakeview", community_type:"Condo")
puts "✅ Done seeding!"

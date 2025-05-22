# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  { name: "Chez Anthony", address: "123 rue de Paris", phone_number: "0247203030", category: "belgian" },
  { name: "Picolini", address: "1 rue de Paris", phone_number: "0147203030", category: "italian" },
  { name: "Sakura", address: "99 rue de Paris", phone_number: "0347203030", category: "french" },
  { name: "Bibimbap", address: "1000 rue de Paris", phone_number: "0457203030", category: "japanese" },
  { name: "Piakchu", address: "972 rue de Paris", phone_number: "0647203030", category: "chinese" },
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished seeding!"

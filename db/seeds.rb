# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.destroy_all
# Product.find_or_create_by!(name: "Dubiin Artists Sketch Book") do |p|
#   p.description = "many pages and on discount"
#   p.price = 1450
#   p.stock = 500
# end

Product.create([{name: "Dubiin Artists Sketch Book", description: "many pages and on discount", price: 1450, stock: 500},
{name: "Dubiin Watercolor Set", description: "12 vibrant colors", price: 800, stock: 300},
{name: "Dubiin Canvas Pack", description: "Set of 5 canvases", price: 1200, stock: 150}])

Product.create(
    name: "Dubiin Acrylic Paint Set",
    description: "Set of 10 colors",
    price: 950,
    stock: 400
)

Product.create(
  name: Faker::Commerce.product_name,
  description: Faker::Lorem.sentence(word_count: 10),
  price: Faker::Commerce.price(range: 100..5000),
  stock: Faker::Number.between(from: 50, to: 1000)
)

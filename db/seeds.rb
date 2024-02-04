# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

puts 'Creating Restaurants...'
mama_restaurant = Restaurant.new(name: "Mama Restaurant", address: "15 rue Gambetta - 59000 LILLE", category: "italian")
mama_restaurant.save

red_dragon = Restaurant.new(name: "Red Dragon", address: "117 avanue de Dunkerque - 59000 LILLE", category: "chinese")
red_dragon.save

tour_d_argent = Restaurant.new(name: "Tour d'Argent", address: "68 Place du Roi - Belgique", category: "belgian")
tour_d_argent.save

chez_gladines = Restaurant.new(name: "Chez Gladines", address: "25 rue de Gand - 59000 LILLE", category: "french")
chez_gladines.save

kisoro = Restaurant.new(name: "Kisoro", address: "115 rue Molinel - 59000 LILLE", category: "japanese")
kisoro.save
puts 'Finished!'

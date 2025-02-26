# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 01 Clean database
puts "Cleaning your database..."
Restaurant.destroy_all

# 02 Create restaurants
puts "Creating your restaurants..."
Restaurant.create!(name: 'Dishoom', address: 'London street' , category: 'italian', phone_number: '0203040400')

Restaurant.create!(name: 'KFC', address: 'Bromley' , category: 'chinese', phone_number: '0203040401')

Restaurant.create!(name: 'Nandos', address: 'Barking' , category: 'french', phone_number: '0203040402')

Restaurant.create!(name: 'Subway', address: 'East ham' , category: 'belgian', phone_number: '0203040403')

Restaurant.create!(name: 'PizzaHut', address: 'Westminster' , category: 'italian', phone_number: '0203040404')

puts "Finished! Created #{Restaurant.count} restaurants."

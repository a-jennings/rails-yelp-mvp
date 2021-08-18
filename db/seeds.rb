# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

valid_categories = %w[chinese italian japanese french belgian]

50.times do
  Restaurant.create!(name: Faker::Restaurant.name,
                     address: Faker::Address.street_address,
                     category: valid_categories.sample,
                     phone_number: Faker::PhoneNumber.phone_number_with_country_code)
end

puts 'Seed Complete'
puts "#{Restaurant.count} restaurants added!"

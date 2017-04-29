# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  price = Faker::Commerce.price
  net_price = (price / 1.23).round(2)

  Product.create! name: Faker::Commerce.product_name, description: Faker::Commerce.color, price: price,
    net_price: net_price, catalogue_number: Faker::Commerce.promotion_code,
    country_of_origin: Faker::Address.country

end

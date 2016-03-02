# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Company.bs,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: "italian",
    description: Faker::Hipster.sentence(25)
    )

  review = Review.create!(
    content: "bla bla ",
    rating: 3,
    restaurant: restaurant
    )
end

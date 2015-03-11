# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

x = 1
10.times do
  Client.create(name: "#{Faker::Name.name}", role_id: Faker::Number.digit)
  Role.create(name: "#{Faker::Company.suffix}", client_id: Faker::Number.digit)
  Address.create(stnumber: Faker::Number.number(4), street: "#{Faker::Address.street_name}", client_id: x)
  Order.create(request: "#{Faker::Company.catch_phrase}", client_id: x)
  x += 1
end

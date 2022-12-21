# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create a list of tenant and manager ids to apply them randomly in associations later
manager_ids = []
tenant_ids = []
building_ids = []

8.times do
  fake_name = Faker::Name.name
  tenant = Tenant.create!(
    first_name: fake_name.split(' ')[0],
    last_name: fake_name.split(' ')[1],
    email: fake_name.gsub(" ", "").downcase + "@example.com",
    password: '11111111'
  )
  tenant_ids << tenant.id
end

4.times do
  fake_name = Faker::Name.name
  manager = Manager.create!(
    first_name: fake_name.split(' ')[0],
    last_name: fake_name.split(' ')[1],
    email: fake_name.gsub(" ", "").downcase + "@example.com",
    password: '11111111'
  )
  manager_ids << manager.id
end

4.times do
  building = Building.create!(
    street_address: Faker::Address.street_address,
    manager_id: manager_ids.sample # take out a random manager id to assign them to the building
  )
  building_ids << building.id
end

20.times do
  letters = ('A'..'Z').to_a
  numbers = (1..99).to_a
  rent_prices = (900..6000).to_a
  apt = Apartment.create!(
    building_id: building_ids.sample,
    apt_no: %(#{numbers.sample}#{letters.sample})
  )
  apt.create_lease(rent_prices.sample) unless apt.id > 15
end
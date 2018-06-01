# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning all tables of the database...'
Booking.destroy_all
House.destroy_all
User.destroy_all


puts 'Creating users'

bob = User.create!(
  email: "bob.lean@test.com",
  password: "123456",
  first_name: "Robert",
  last_name: "Lean",
 # avatar: File.open(Rails.root.join("db/fixtures/users/bob.jpg")),
  city: "Nantes",
  phone: "0203040506"
  )

felindra = User.create!(
  email: "felindra.boyard@test.com",
  password: "azerty",
  first_name: "Felindra",
  last_name: "Boyard",
 # avatar: File.open(Rails.root.join("db/fixtures/users/felindra.jpg")),
  city: "Paris",
  phone: "0103040506"
  )

john = User.create!(
  email: "john.attan@test.com",
  password: "123456",
  first_name: "John",
  last_name: "Attan",
 # avatar: File.open(Rails.root.join("db/fixtures/users/john.jpg")),
  city: "Lyon",
  phone: "0403040506"
  )


puts 'Creating bookings for users'

booking1 = Booking.create!(
  user: bob,
  house: petitemaison,
  start_on: "2018-04-25",
  end_on: "2018-04-26",
  status: "accepted",
  )


puts 'Finished...'

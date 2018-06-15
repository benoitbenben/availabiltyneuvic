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


puts 'Creating users : ben@demo.fr'

ben = User.create!(
  email: "ben@demo.fr",
  password: "123456")
  # avatar: File.open(Rails.root.join("db/fixtures/users/bob.jpg")),


 puts 'Creating houses : grande & petite maison'


house1 = House.create!(
  name: "Grande maison",
  # image: File.open(Rails.root.join("db/fixtures/costumes/ladybug.jpg")),
  availability: true,
  user: ben
  )
house2 = House.create!(
  name: "Petite maison",
  # image: File.open(Rails.root.join("db/fixtures/costumes/ladybug.jpg")),
  availability: true,
  user: ben
  )


 puts 'Creating bookings for users'
 booking1 = Booking.create!(
   user: ben,
   house: house1,
   start_on: "2018-04-25",
   end_on: "2018-04-26"
 )


puts 'Finished...'

# booking1 = Booking.create!(
#   user: bob,
#   costume: unicorn,
#   start_on: "2018-04-25",
#   end_on: "2018-04-26",
#   status: "accepted",
#   price: 49,
#   message: "Hey! Thanks! :)"
#   )

# booking2 = Booking.create!(
#   user: bob,
#   costume: jasmine,
#   start_on: "2018-08-03",
#   end_on: "2018-08-13",
#   status: "pending",
#   price: 10,
#   message: "Do you have this costume also in another size?"
#   )

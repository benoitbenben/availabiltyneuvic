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


puts 'Creating users : ben@neuvic.fr, ..'

ben = User.create!(
  email: "ben@neuvic.fr",
  password: "123456",
  name: "ben")
  # avatar: File.open(Rails.root.join("db/fixtures/users/bob.jpg")),
bruno = User.create!(
  email: "bruno@neuvic.fr",
  password: "123456",
  name: "bruno")

catherine = User.create!(
  email: "catherine@neuvic.fr",
  password: "123456",
  name: "catherine")

francois = User.create!(
  email: "francois@neuvic.fr",
  password: "123456",
  name: "francois")

marie = User.create!(
  email: "marie@neuvic.fr",
  password: "123456",
  name: "marie")

olivier = User.create!(
  email: "olivier@neuvic.fr",
  password: "123456",
  name: "olivier")
josephine = User.create!(
  email: "josephine@neuvic.fr",
  password: "123456",
  name: "josephine")

marieange = User.create!(
  email: "marieange@neuvic.fr",
  password: "123456",
  name: "marieange")

remi = User.create!(
  email: "remi@neuvic.fr",
  password: "123456",
  name: "remi")

marilou = User.create!(
  email: "marilou@neuvic.fr",
  password: "123456",
  name: "marilou")

 puts 'Creating houses : grande & petite maison'

house1 = House.create!(
  name: "Petite maison",
  # photo: File.open(Rails.root.join("db/fixtures/houses/house1.jpg")),
  availability: true,
  user: ben
  )
house2 = House.create!(
  name: "Grande maison",
  # photo: File.open(Rails.root.join("db/fixtures/houses/house2.jpg")),
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
booking2 = Booking.create!(
   user: bruno,
   house: house1,
   start_on: "2018-07-05",
   end_on: "2018-07-16"
)
booking3 = Booking.create!(
   user: olivier,
   house: house2,
   start_on: "2018-07-23",
   end_on: "2018-07-28"
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

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

ben = User.create!(
  email: "ben@test.com",
  password: "123456")
  # avatar: File.open(Rails.root.join("db/fixtures/users/bob.jpg")),



# puts 'Creating bookings for users'

# booking1 = Booking.create!(
#   user: ben,
#   house: free
#   start_on: "2018-04-25",
#   end_on: "2018-04-26",
#   )


puts 'Finished...'

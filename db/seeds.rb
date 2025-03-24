
require 'faker'


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Booking.destroy_all
Flight.destroy_all
Aircraft.destroy_all
Airport.destroy_all
User.destroy_all

10.times do |i|

  Airport.create!(
    airport_name: Faker::Travel::Airport.name(size: 'large', region: 'united_states'),  # Short name like "LAX"
    city_address: Faker::Address.street_address,       # City name
    country:  "USA"         # Country name
  )

end

5.times do
  Aircraft.create!(
    aircraft_name: Faker::Vehicle.make_and_model,
    manufacturer: Faker::Company.name
  )
end


 20.times do |i|

  Flight.create(

  flight_duration: rand(60..600) , arrival_flight_number: Faker::Number.number(digits: 5) , departing_flight_number: Faker::Number.number(digits: 5) , departure_datetime: Faker::Time.forward(days: 10, period: :morning) , arrival_datetime: Faker::Time.forward(days: 10, period: :afternoon) , flight_type: %w[Domestic International].sample , aircraft: Aircraft.all.sample, departure_airport: Airport.all.sample , arrival_airport: Airport.all.sample
  )

 end


 10.times do |i|

  User.create( first_name:Faker::Name.first_name,  last_name: Faker::Name.last_name, email:  Faker::Internet.unique.email , address: Faker::Address.full_address , password: "password123", password_confirmation: "password123" )


 end


 30.times do |i|

  Booking.create(booking_status:%w[Confirmed Pending Canceled].sample , seat_number: rand(1..200), user: User.all.sample , flight: Flight.all.sample)


 end


 
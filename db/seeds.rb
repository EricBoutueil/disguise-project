# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Cloth.destroy_all
Booking.destroy_all

10.times do
  user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password(8),
      address: Faker::Address.street_address,
      user_picture: Faker::Avatar
    )
end
puts "done users seeds"

5.times do |i|
  puts "start cloth seeds number #{i}"
  owner = User.all.sample
  cloth = Cloth.create!(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      main_picture: File.new(File.join(__dir__, "../app/assets/images/disguise#{(2..7).to_a.sample}.jpg")),
      category: Cloth::CATEGORIES.sample.to_s,
      size: Cloth::SIZES.sample.to_s,
      price_per_day: (10..20).to_a.sample.to_i,
      owner: owner
    )

  3.times do
    start_date = Date.today + (1..20).to_a.sample.to_i
    end_date = start_date + (1..5).to_a.sample.to_i
    cloth = Cloth.all.sample
    customer = User.all.reject{|user|user == owner}.sample
    booking = Booking.create!(
      start_date: start_date,
      end_date: end_date,
      cloth: cloth,
      customer: customer,
      total_booking_price: (end_date - start_date) * cloth.price_per_day
      )
  end
puts "cloths and bookings seeds done"
end

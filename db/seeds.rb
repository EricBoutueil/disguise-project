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


#Samuel - owner
sam = User.create!(
    first_name: "Samuel",
    last_name: "Olichon",
    email: "sam@lewagon.fr",
    password: "azerty",
    address: Faker::Address.street_address,
    user_picture: Faker::Avatar
  )
puts "done sam"

#10.times do
  user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password(8),
      address: Faker::Address.street_address,
      user_picture: Faker::Avatar
    )
#end
puts "done user seed"

cloth5 = Cloth.create!(
    title: "The Chinese PERFECTION",
    description: "Be the most beautifull one for the BEST PARTY of the year!!",
    main_picture: File.new(File.join(__dir__, "../app/assets/images/disguise5.jpg")),
    category: "Princess",
    size: "S",
    price_per_day: 9,
    owner: user
  )

clothEric = Cloth.create!(
    title: "The GREAT LUIDGI",
    description: "Enjoy being the only best LUIDGI!!",
    main_picture: File.new(File.join(__dir__, "../app/assets/images/disguiseEric.jpg")),
    category: "Heo",
    size: "M",
    price_per_day: 9,
    owner: user
  )

puts "start cloth seeds"
cloth1 = Cloth.create!(
    title: "The REAL V disguise",
    description: "Do you want to play V?? Here is your disugise!",
    main_picture: File.new(File.join(__dir__, "../app/assets/images/disguise2.jpg")),
    category: "Hero",
    size: "M",
    price_per_day: 11,
    owner: sam
  )

puts "cloths sam done"

a = [3, 4, 6, 7]
a.each do |x|
  puts "start cloth seeds number #{x}"
  owner = user #User.all.sample
  cloth = Cloth.create!(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      main_picture: File.new(File.join(__dir__, "../app/assets/images/disguise#{x}.jpg")),
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

# clothSam = Cloth.create!(
#     title: "The best French perruque EVER",
#     description: "Become the most beautifull PRINCESSE!!",
#     main_picture: File.new(File.join(__dir__, "../app/assets/images/disguiseSam.jpg")),
#     category: "Princess",
#     size: "S",
#     price_per_day: 9,
#     owner: sam
#   )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
puts 'Deleting seeds'

Service.delete_all
Booking.delete_all
User.delete_all

puts 'Creating new seeds'


file_1 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_1 = User.create!(
  email: 'rociojalifi@gmail.com',
  password: '123456',
  full_name: 'Rocio Jalifi',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_1.photo.attach(io: file_1, filename: 'nes_1.jpg', content_type: 'image/jpg')
user_1.save

file_2 = URI.open('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_2 = User.create!(
  email: 'pablominetto@gmail.com',
  password: '123456',
  full_name: 'Pablo Minetto',
  role: 'Nutritionist',
  language: 'Arabic',
  nationality: 'Arabic'
)
user_2.photo.attach(io: file_2, filename: 'nes_2.jpg', content_type: 'image/jpg')
user_2.save

service_1 = Service.create!(
  speciality: 'Sports Nutritionist',
  price: 100,
  user: user_1,
)

service_2 = Service.create!(
  speciality: 'Sports Nutritionist',
  price: 100,
  user: user_2,
)

booking_1 = Booking.create!(
  location: 'Amsterdam',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_2,
  service: service_1,
)

booking_2 = Booking.create!(
  location: 'Madrid',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_1,
  service: service_2,
)

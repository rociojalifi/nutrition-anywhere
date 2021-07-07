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


Booking.delete_all
Service.delete_all
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
  language: 'Spanish',
  nationality: 'Argentinian'
)
user_2.photo.attach(io: file_2, filename: 'nes_2.jpg', content_type: 'image/jpg')
user_2.save

file_3 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_3 = User.create!(
  email: 'moreau@gmail.com',
  password: '123456',
  full_name: 'Timothée Moreau',
  role: 'Nutritionist',
  language: 'French',
  nationality: 'French' 
)
user_3.photo.attach(io: file_3, filename: 'nes_3.jpg', content_type: 'image/jpg')
user_3.save

file_4 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_4 = User.create!(
  email: 'blanchetélise@gmail.com',
  password: '123456',
  full_name: 'Élise Blanchet',
  role: 'Nutritionist',
  language: 'French',
  nationality: 'French' 
)
user_4.photo.attach(io: file_4, filename: 'nes_4.jpg', content_type: 'image/jpg')
user_4.save

file_5 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_5 = User.create!(
  email: 'chiara@gmail.com',
  password: '123456',
  full_name: 'Chiara Pascazi',
  role: 'Nutritionist',
  language: 'Italian',
  nationality: 'Italian' 
)
user_5.photo.attach(io: file_5, filename: 'nes_5.jpg', content_type: 'image/jpg')
user_5.save

file_6 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_6 = User.create!(
  email: 'giulianimarco@gmail.com',
  password: '123456',
  full_name: 'Marco Giuliani',
  role: 'Nutritionist',
  language: 'Italian',
  nationality: 'Italian' 
)
user_6.photo.attach(io: file_6, filename: 'nes_6.jpg', content_type: 'image/jpg')
user_6.save

file_7 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_7 = User.create!(
  email: 'zhangmin@gmail.com',
  password: '123456',
  full_name: 'Zhang Min',
  role: 'Nutritionist',
  language: 'Mandarin Chinese',
  nationality: 'Chinese' 
)
user_7.photo.attach(io: file_7, filename: 'nes_7.jpg', content_type: 'image/jpg')
user_7.save

file_8 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_8 = User.create!(
  email: 'Zhangxiuying@gmail.com',
  password: '123456',
  full_name: 'Zhang Xiu Ying',
  role: 'Nutritionist',
  language: 'Mandarin Chinese',
  nationality: 'Chinese' 
)
user_8.photo.attach(io: file_8, filename: 'nes_8.jpg', content_type: 'image/jpg')
user_8.save

file_9 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_9 = User.create!(
  email: 'lourençog@gmail.com',
  password: '123456',
  full_name: 'Lourenço Gonçalves',
  role: 'Nutritionist',
  language: 'Portuguese',
  nationality: 'Portuguese' 
)
user_9.photo.attach(io: file_9, filename: 'nes_9.jpg', content_type: 'image/jpg')
user_9.save

file_10 = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_10 = User.create!(
  email: 'Dasilvajoão@gmail.com',
  password: '123456',
  full_name: 'João Da Silva',
  role: 'Nutritionist',
  language: 'Portuguese',
  nationality: 'Portuguese' 
)
user_10.photo.attach(io: file_10, filename: 'nes_10.jpg', content_type: 'image/jpg')
user_10.save

service_1 = Service.create!(
  speciality: 'Sports Nutritionist',
  price: 100,
  user: user_1,
)

service_2 = Service.create!(
  speciality: 'Oncology Nutritionist',
  price: 100,
  user: user_2,
)

service_3 = Service.create!(
  speciality: 'Eating Disorder Nutritionist',
  price: 100,
  user: user_3,
)

service_4 = Service.create!(
  speciality: 'Vegan Nutritionist',
  price: 100,
  user: user_4,
)

service_5 = Service.create!(
  speciality: 'Keto Nutritionist',
  price: 100,
  user: user_5,
)

service_6 = Service.create!(
  speciality: 'Sports Nutritionist',
  price: 100,
  user: user_6,
)

service_7 = Service.create!(
  speciality: 'Oncology Nutritionist',
  price: 100,
  user: user_7,
)

service_8 = Service.create!(
  speciality: 'Pediatric Nutritinist',
  price: 100,
  user: user_8,
)

service_9 = Service.create!(
  speciality: 'Vegan Nutritionist',
  price: 100,
  user: user_9,
)

service_10 = Service.create!(
  speciality: 'Eating Disorder Nutritionist',
  price: 100,
  user: user_10,
)

booking_1 = Booking.create!(
  location: 'Amsterdam',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_1,
  service: service_1,
)

booking_2 = Booking.create!(
  location: 'Madrid',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_2,
  service: service_2,
)

booking_3 = Booking.create!(
  location: 'London',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_3,
  service: service_3,
)

booking_4 = Booking.create!(
  location: 'Barcelona',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_4,
  service: service_4,
)

  booking_5 = Booking.create!(
  location: 'Roma',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_5,
  service: service_5,
)

booking_6 = Booking.create!(
  location: 'París',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_8,
  service: service_6,
)

  booking_7 = Booking.create!(
  location: 'Buenos Aires',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_7,
  service: service_7,
)

booking_8 = Booking.create!(
  location: 'Tenerife',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_10,
  service: service_8,
)

  booking_9 = Booking.create!(
  location: 'Berlin',
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_10,
  service: service_9,
)

booking_10 = Booking.create!(
  location: 'Florence',
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_10,
  service: service_10,
)

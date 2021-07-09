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
Review.delete_all
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
  email: 'abdelfattah@gmail.com',
  password: '123456',
  full_name: 'Abdel Fattah',
  role: 'Nutritionist',
  language: 'Arabic',
  nationality: 'Arabic'
)
user_2.photo.attach(io: file_2, filename: 'nes_2.jpg', content_type: 'image/jpg')
user_2.save

file_3 = URI.open('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_3 = User.create!(
  email: 'joaosilva@gmail.com',
  password: '123456',
  full_name: 'Joao Silva',
  role: 'Nutritionist',
  language: 'Portuguese',
  nationality: 'Portuguese'
)
user_3.photo.attach(io: file_3, filename: 'nes_3.jpg', content_type: 'image/jpg')
user_3.save

file_4 = URI.open('https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
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

file_5 = URI.open('https://images.unsplash.com/photo-1585358682246-23acb1561f6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=398&q=80')
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

file_6 = URI.open('https://images.unsplash.com/photo-1612276529418-52e6ad86ee1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
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

file_7 = URI.open('https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80')
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

file_8 = URI.open('https://images.unsplash.com/photo-1582896911227-c966f6e7fb93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1575&q=80')
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

file_9 = URI.open('https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
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

file_10 = URI.open('https://images.unsplash.com/photo-1583123810721-5a8e229a480b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1534&q=80')
user_10 = User.create!(
  email: 'antoniogarcia@gmail.com',
  password: '123456',
  full_name: 'Antonio Garcia',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Spanish' 
)
user_10.photo.attach(io: file_10, filename: 'nes_10.jpg', content_type: 'image/jpg')
user_10.save

file_11 = URI.open('https://images.unsplash.com/photo-1582896911227-c966f6e7fb93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1575&q=80')
user_11 = User.create!(
  email: 'danyoon@gmail.com',
  password: '123456',
  full_name: 'Dan Yoon',
  role: 'Patient',
  language: 'Mandarin Chinese',
  nationality: 'Chinese' 
)
user_11.photo.attach(io: file_11, filename: 'nes_11.jpg', content_type: 'image/jpg')
user_11.save

file_12 = URI.open('https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
user_12 = User.create!(
  email: 'lronaldo@gmail.com',
  password: '123456',
  full_name: 'Lourenço Ronaldo',
  role: 'Patient',
  language: 'Portuguese',
  nationality: 'Portuguese' 
)
user_12.photo.attach(io: file_12, filename: 'nes_9.jpg', content_type: 'image/jpg')
user_12.save

file_13 = URI.open('https://images.unsplash.com/photo-1583123810721-5a8e229a480b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1534&q=80')
user_13 = User.create!(
  email: 'joselopez@gmail.com',
  password: '123456',
  full_name: 'José López',
  role: 'Patient',
  language: 'Spanish',
  nationality: 'Spanish' 
)
user_13.photo.attach(io: file_13, filename: 'nes_13.jpg', content_type: 'image/jpg')
user_13.save

file_14 = URI.open('https://images.unsplash.com/photo-1584308972272-9e4e7685e80f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmFjZXxlbnwwfDJ8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
user_14 = User.create!(
  email: 'eugeniaamaya@gmail.com',
  password: '123456',
  full_name: 'Eugenia Amaya',
  role: 'Patient',
  language: 'Spanish',
  nationality: 'Argentinian'
)
user_14.photo.attach(io: file_14, filename: 'nes_14.jpg', content_type: 'image/jpg')
user_14.save

service_1 = Service.create!(
  speciality: 'Oncology Nutritionism',
  price: 100,
  location: 'Buenos Aires',
  user: user_1,
)
service_2 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 70,
  location: 'Dubai',
  user: user_2,
)
service_3 = Service.create!(
  speciality: 'Eating Disorder Nutritionism',
  price: 100,
  location: 'Lisboa',
  user: user_3,
)
service_4 = Service.create!(
  speciality: 'Vegan Nutritionism',
  price: 100,
  location: 'Paris',
  user: user_4,
)
service_5 = Service.create!(
  speciality: 'Oncology Nutritionism',
  price: 150,
  location: 'Roma',
  user: user_5,
)
service_6 = Service.create!(
  speciality: 'Keto Nutritionism',
  price: 90,
  user: user_6,
  location: 'Venecia',
)
service_7 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 100,
  user: user_7,
  location: 'Pekin',
)
service_8 = Service.create!(
  speciality: 'Oncology Nutritionism',
  price: 70,
  user: user_8,
  location: 'Shangai',
)
service_9 = Service.create!(
  speciality: 'Pediatric Nutritinism',
  price: 90,
  user: user_9,
  location: 'Oporto',
)
service_10 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 100,
  user: user_10,
  location: 'Madrid',
)
service_11 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 90,
  user: user_1,
  location: 'Buenos Aires',
)
service_12 = Service.create!(
  speciality: 'Vegan Nutritionism',
  price: 100,
  user: user_2,
  location: 'Lisboa',
)
service_13 = Service.create!(
  speciality: 'Pediatric Nutritinism',
  price: 120,
  user: user_1,
  location: 'Buenos Aires',
)
service_14 = Service.create!(
  speciality: 'Vegan Nutritionism',
  price: 120,
  user: user_1,
  location: 'Buenos Aires',
)
booking_1 = Booking.create!(
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_11,
  service: service_1,
)
booking_2 = Booking.create!(
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_12,
  service: service_2,
)
booking_3 = Booking.create!(
  booking_date: '2021-08-15 15:00:00 UTC',
  user: user_13,
  service: service_3,
)
booking_4 = Booking.create!(
  booking_date: '2021-07-20 14:00:00 UTC',
  user: user_12,
  service: service_11,
)
  booking_5 = Booking.create!(
  booking_date: '2021-07-30 14:00:00 UTC',
  user: user_11,
  service: service_5,
)
booking_6 = Booking.create!(
  booking_date: '2021-07-15 15:00:00 UTC',
  user: user_12,
  service: service_13,
)
  booking_7 = Booking.create!(
  booking_date: '2021-08-19 14:00:00 UTC',
  user: user_13,
  service: service_14,
)
booking_8 = Booking.create!(
  booking_date: '2021-07-13 15:00:00 UTC',
  user: user_11,
  service: service_14,
)
  booking_9 = Booking.create!(
  booking_date: '2021-08-30 14:00:00 UTC',
  user: user_12,
  service: service_9,
)
booking_10 = Booking.create!(
  booking_date: '2021-07-25 15:00:00 UTC',
  user: user_13,
  service: service_10,
)

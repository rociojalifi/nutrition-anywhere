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
file_1 = URI.open('https://images.unsplash.com/photo-1485893086445-ed75865251e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80')
user_1 = User.create!(
  email: 'jalifirocio@gmail.com',
  password: '123456',
  full_name: 'Rocio Jalifi',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_1.photo.attach(io: file_1, filename: 'nes_1.jpg', content_type: 'image/jpg')
user_1.save

file_2 = URI.open('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
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

file_3 = URI.open('https://images.unsplash.com/photo-1584999734482-0361aecad844?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
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

file_4 = URI.open('https://images.unsplash.com/photo-1581824043583-6904b080a19c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80')
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

file_5 = URI.open('https://images.unsplash.com/photo-1610669057941-53c6b567554a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=460&q=80')
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

file_6 = URI.open('https://images.unsplash.com/photo-1623605931891-d5b95ee98459?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=512&q=80')
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

file_7 = URI.open('https://images.unsplash.com/photo-1591605555749-d25cfd47e981?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
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

file_8 = URI.open('https://images.unsplash.com/photo-1548964095-b9a292144866?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
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

file_9 = URI.open('https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=547&q=80')
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

file_10 = URI.open('https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=501&q=80')
user_10 = User.create!(
  email: 'antoniogarcia1@gmail.com',
  password: '123456',
  full_name: 'Antonio Garcia',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Spanish' 
)
user_10.photo.attach(io: file_10, filename: 'nes_10.jpg', content_type: 'image/jpg')
user_10.save

file_11 = URI.open('https://images.unsplash.com/photo-1518577915332-c2a19f149a75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=484&q=80')
user_11 = User.create!(
  email: 'rcarla@gmail.com',
  password: '123456',
  full_name: 'Carla Rivero',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Spanish' 
)
user_11.photo.attach(io: file_11, filename: 'nes_11.jpg', content_type: 'image/jpg')
user_11.save

file_12 = URI.open('https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
user_12 = User.create!(
  email: 'andresnutricion@gmail.com',
  password: '123456',
  full_name: 'Andrés Garcia',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_12.photo.attach(io: file_12, filename: 'nes_12.jpg', content_type: 'image/jpg')
user_12.save

file_13 = URI.open('https://images.unsplash.com/photo-1515463892140-58a22e37ff72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=520&q=80')
user_13 = User.create!(
  email: 'franca4@gmail.com',
  password: '123456',
  full_name: 'Franca Bianchi',
  role: 'Nutritionist',
  language: 'Italian',
  nationality: 'Italian' 
)
user_13.photo.attach(io: file_13, filename: 'nes_13.jpg', content_type: 'image/jpg')
user_13.save

file_14 = URI.open('https://images.unsplash.com/photo-1617200785733-6237c87c9ece?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_14 = User.create!(
  email: 'nadianutrition@gmail.com',
  password: '123456',
  full_name: 'Nadia Row',
  role: 'Nutritionist',
  language: 'English',
  nationality: 'English' 
)
user_14.photo.attach(io: file_14, filename: 'nes_14.jpg', content_type: 'image/jpg')
user_14.save

file_15 = URI.open('https://images.unsplash.com/photo-1625241189662-2980453ebffc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fG1hbnxlbnwwfDJ8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
user_15 = User.create!(
  email: 'jhonnyknoxville6@gmail.com',
  password: '123456',
  full_name: 'Jhonny Knoxville',
  role: 'Nutritionist',
  language: 'English',
  nationality: 'English' 
)
user_15.photo.attach(io: file_15, filename: 'nes_15.jpg', content_type: 'image/jpg')
user_15.save

file_16 = URI.open('https://images.unsplash.com/photo-1612427404252-f424ef7a7cf5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
user_16 = User.create!(
  email: 'whitenutrition@gmail.com',
  password: '123456',
  full_name: 'Skyler White',
  role: 'Nutritionist',
  language: 'French',
  nationality: 'French' 
)
user_16.photo.attach(io: file_16, filename: 'nes_16.jpg', content_type: 'image/jpg')
user_16.save

file_17 = URI.open('https://images.unsplash.com/photo-1593439411281-6500cf61961c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_17 = User.create!(
  email: 'ennmadifrancesco@gmail.com',
  password: '123456',
  full_name: 'Ennma Di Francesco',
  role: 'Nutritionist',
  language: 'Italian',
  nationality: 'Italian' 
)
user_17.photo.attach(io: file_17, filename: 'nes_17.jpg', content_type: 'image/jpg')
user_17.save

file_18 = URI.open('https://images.unsplash.com/photo-1513690277738-c9bc7eb2a992?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU0fHx3b21hbnxlbnwwfDJ8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
user_18 = User.create!(
  email: 'antonelaramirez@gmail.com',
  password: '123456',
  full_name: 'Antonela Amaya',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_18.photo.attach(io: file_18, filename: 'nes_18.jpg', content_type: 'image/jpg')
user_18.save

file_19 = URI.open('https://images.unsplash.com/photo-1506610154363-2e1a8c573d2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1369&q=80')
user_19 = User.create!(
  email: 'nutritionkatherine@gmail.com',
  password: '123456',
  full_name: 'Katherine Abboud',
  role: 'Nutritionist',
  language: 'Arabic',
  nationality: 'Arabic' 
)
user_19.photo.attach(io: file_19, filename: 'nes_19.jpg', content_type: 'image/jpg')
user_19.save

file_20 = URI.open('https://images.unsplash.com/photo-1506207803951-1ee93d7256ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODJ8fG1hbnxlbnwwfDJ8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
user_20 = User.create!(
  email: 'federicoquintero@gmail.com',
  password: '123456',
  full_name: 'Federico Quintero',
  role: 'Nutritionist',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_20.photo.attach(io: file_20, filename: 'nes_20.jpg', content_type: 'image/jpg')
user_20.save

file_21 = URI.open('https://images.unsplash.com/photo-1565464027194-7957a2295fb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
user_21 = User.create!(
  email: 'radamel@gmail.com',
  password: '123456',
  full_name: 'Radamel Perez',
  role: 'Patient',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_21.photo.attach(io: file_21, filename: 'nes_21.jpg', content_type: 'image/jpg')
user_21.save

file_22 = URI.open('https://images.unsplash.com/photo-1598641795816-a84ac9eac40c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=501&q=80')
user_22 = User.create!(
  email: 'aakifahfattah@gmail.com',
  password: '123456',
  full_name: 'Aakifah Fattah',
  role: 'Patient',
  language: 'Arabic',
  nationality: 'Arabic'
)
user_22.photo.attach(io: file_22, filename: 'nes_22.jpg', content_type: 'image/jpg')
user_22.save

file_23 = URI.open('https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=501&q=80')
user_23 = User.create!(
  email: 'dossantos@gmail.com',
  password: '123456',
  full_name: 'Manuel Dos Santos',
  role: 'Patient',
  language: 'Portuguese',
  nationality: 'Portuguese'
)
user_23.photo.attach(io: file_23, filename: 'nes_23.jpg', content_type: 'image/jpg')
user_23.save

file_24 = URI.open('https://images.unsplash.com/photo-1499887142886-791eca5918cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_24 = User.create!(
  email: 'jeanne@gmail.com',
  password: '123456',
  full_name: 'Jeanne Mouliné',
  role: 'Patient',
  language: 'French',
  nationality: 'French' 
)
user_24.photo.attach(io: file_24, filename: 'nes_24.jpg', content_type: 'image/jpg')
user_24.save

file_25 = URI.open('https://images.unsplash.com/photo-1485290334039-a3c69043e517?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_25 = User.create!(
  email: 'kiarashelby@gmail.com',
  password: '123456',
  full_name: 'Kiara Shelby',
  role: 'Patient',
  language: 'Italian',
  nationality: 'Italian' 
)
user_25.photo.attach(io: file_25, filename: 'nes_25.jpg', content_type: 'image/jpg')
user_25.save

file_26 = URI.open('https://images.unsplash.com/photo-1552162864-987ac51d1177?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_26 = User.create!(
  email: 'gabriellejackson@gmail.com',
  password: '123456',
  full_name: 'Gabrielle Jackson',
  role: 'Patient',
  language: 'English',
  nationality: 'English' 
)
user_26.photo.attach(io: file_26, filename: 'nes_26.jpg', content_type: 'image/jpg')
user_26.save

file_27 = URI.open('https://images.unsplash.com/photo-1593439411281-6500cf61961c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTExfHx3b21hbnxlbnwwfDJ8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
user_27 = User.create!(
  email: 'eugenia@estudioamaya.net',
  password: '123456',
  full_name: 'Eugenia Amaya',
  role: 'Patient',
  language: 'Spanish',
  nationality: 'Argentinian' 
)
user_27.photo.attach(io: file_27, filename: 'nes_27.jpg', content_type: 'image/jpg')
user_27.save

file_28 = URI.open('https://images.unsplash.com/photo-1597248374161-426f0d6d2fc9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_28 = User.create!(
  email: 'jannet@gmail.com',
  password: '123456',
  full_name: 'Jannet Steven',
  role: 'Patient',
  language: 'Portuguese',
  nationality: 'Portuguese' 
)
user_28.photo.attach(io: file_28, filename: 'nes_28.jpg', content_type: 'image/jpg')
user_28.save

file_29 = URI.open('https://images.unsplash.com/photo-1619900418667-6a39cb9dd7c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
user_29 = User.create!(
  email: 'migmefang@gmail.com',
  password: '123456',
  full_name: 'Mingmei Fang',
  role: 'Patient',
  language: 'Chinese Mandarin',
  nationality: 'Chinese' 
)
user_29.photo.attach(io: file_29, filename: 'nes_29.jpg', content_type: 'image/jpg')
user_29.save

file_30 = URI.open('https://images.unsplash.com/photo-1592790807458-d7980c141d90?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=501&q=80')
user_30 = User.create!(
  email: 'romerohector@gmail.com',
  password: '123456',
  full_name: 'Hector Romero',
  role: 'Patient',
  language: 'Spanish',
  nationality: 'Spanish' 
)
user_30.photo.attach(io: file_30, filename: 'nes_30.jpg', content_type: 'image/jpg')
user_30.save

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
  location: 'París',
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
  speciality: 'Pediatric Nutritionism',
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
  speciality: 'Eating Disorder Nutritionism',
  price: 90,
  user: user_11,
  location: 'Barcelona',
)
service_12 = Service.create!(
  speciality: 'Vegan Nutritionism',
  price: 100,
  user: user_12,
  location: 'Mendoza',
)
service_13 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 120,
  user: user_13,
  location: 'Roma',
)
service_14 = Service.create!(
  speciality: 'Keto Nutritionism',
  price: 120,
  user: user_14,
  location: 'New York',
)
service_15 = Service.create!(
  speciality: 'Pediatric Nutritionism',
  price: 140,
  user: user_15,
  location: 'Miami',
)
service_16 = Service.create!(
  speciality: 'Vegan Nutritionism',
  price: 120,
  user: user_16,
  location: 'París',
)
service_17 = Service.create!(
  speciality: 'Sports Nutritionism',
  price: 120,
  user: user_17,
  location: 'Florence',
)
service_18 = Service.create!(
  speciality: 'Oncology Nutritionism',
  price: 120,
  user: user_18,
  location: 'Sevilla',
)
service_19 = Service.create!(
  speciality: 'Eating Disorder Nutritionism',
  price: 120,
  user: user_19,
  location: 'Dubái',
)
service_20 = Service.create!(
  speciality: 'Keto Nutritionism',
  price: 120,
  user: user_20,
  location: 'Córdoba',
)
booking_1 = Booking.create!(
  booking_date: '2021-07-22 11:00:00 UTC',
  user: user_21,
  service: service_1,
)
booking_2 = Booking.create!(
  booking_date: '2021-07-30 8:00:00 UTC',
  user: user_22,
  service: service_2,
)
booking_3 = Booking.create!(
  booking_date: '2021-08-5 10:00:00 UTC',
  user: user_23,
  service: service_3,
)
booking_4 = Booking.create!(
  booking_date: '2021-08-15 8:30:00 UTC',
  user: user_24,
  service: service_4,
)
  booking_5 = Booking.create!(
  booking_date: '2021-08-17 9:00:00 UTC',
  user: user_25,
  service: service_5,
)
booking_6 = Booking.create!(
  booking_date: '2021-08-19 10:14:00 UTC',
  user: user_26,
  service: service_14,
)
  booking_7 = Booking.create!(
  booking_date: '2021-08-20 9:00:00 UTC',
  user: user_27,
  service: service_1,
)
booking_8 = Booking.create!(
  booking_date: '2021-08-22 10:00:00 UTC',
  user: user_28,
  service: service_3,
)
  booking_9 = Booking.create!(
  booking_date: '2021-08-24 8:00:00 UTC',
  user: user_29,
  service: service_7,
)
booking_10 = Booking.create!(
  booking_date: '2021-08-24 8:30:00 UTC',
  user: user_30,
  service: service_10,
)
booking_11 = Booking.create!(
  booking_date: '2021-08-24 8:15:00 UTC',
  user: user_26,
  service: service_15,
)
booking_12 = Booking.create!(
  booking_date: '2021-08-30 10:00:00 UTC',
  user: user_27,
  service: service_1,
)
booking_13 = Booking.create!(
  booking_date: '2021-09-1 11:00:00 UTC',
  user: user_24,
  service: service_16,
)
booking_14 = Booking.create!(
  booking_date: '2021-09-3 10:00:00 UTC',
  user: user_29,
  service: service_7,
)
booking_15 = Booking.create!(
  booking_date: '2021-09-7 9:00:00 UTC',
  user: user_25,
  service: service_6,
)
booking_16 = Booking.create!(
  booking_date: '2021-09-6 8:14:00 UTC',
  user: user_26,
  service: service_15,
)
booking_17 = Booking.create!(
  booking_date: '2021-09-8 10:00:00 UTC',
  user: user_23,
  service: service_9,
)
booking_18 = Booking.create!(
  booking_date: '2021-09-9 8:15:00 UTC',
  user: user_25,
  service: service_13,
)
booking_19 = Booking.create!(
  booking_date: '2021-09-11 9:00:00 UTC',
  user: user_21,
  service: service_18,
)
booking_20 = Booking.create!(
  booking_date: '2021-09-12 10:14:00 UTC',
  user: user_26,
  service: service_15,
)
booking_21 = Booking.create!(
  booking_date: '2021-09-14 13:00:00 UTC',
  user: user_26,
  service: service_15,
)
booking_22 = Booking.create!(
  booking_date: '2021-09-17 12:00:00 UTC',
  user: user_24,
  service: service_16,
)
booking_23 = Booking.create!(
  booking_date: '2021-09-18 14:00:00 UTC',
  user: user_15,
  service: service_16,
)
booking_24 = Booking.create!(
  booking_date: '2021-09-19 12:00:00 UTC',
  user: user_23,
  service: service_9,
)
booking_25 = Booking.create!(
  booking_date: '2021-09-23 11:00:00 UTC',
  user: user_30,
  service: service_10,
)
booking_26 = Booking.create!(
  booking_date: '2021-09-25 15:00:00 UTC',
  user: user_27,
  service: service_10,
)
booking_27 = Booking.create!(
  booking_date: '2021-09-27 14:00:00 UTC',
  user: user_30,
  service: service_10,
)
booking_28 = Booking.create!(
  booking_date: '2021-09-28 12:00:00 UTC',
  user: user_28,
  service: service_3,
)
booking_29 = Booking.create!(
  booking_date: '2021-09-29 10:00:00 UTC',
  user: user_25,
  service: service_5,
)
booking_30 = Booking.create!(
  booking_date: '2021-10-2 11:00:00 UTC',
  user: user_27,
  service: service_1,
)
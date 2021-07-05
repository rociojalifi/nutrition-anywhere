# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


nutritionists = Nutritionist.create([{
  email: 'rociojalifi@gmail.com';
  encrypted_password: 123456;
  full_name: 'Rocio Jalifi';
  photo: '#';
  role: 'Nutritionist';
  language: 'Spanish';
  nationality: 'Argentinian'; 
},
{
  email: 'eugeniaamaya@gmail.com';
  encrypted_password: 123456;
  full_name: 'Eugenia Amaya';
  photo: '#';
  role: 'Nutritionist';
  language: 'French';
  nationality: 'French';
},
{
  email: 'gustavohernandez@gmail.com';
  encrypted_password: 123456;
  full_name: 'Gustavo Hernandez';
  photo: '#';
  role: 'Nutritionist';
  language: 'English';
  nationality: 'English';
},
{
  email: 'pablominetto@gmail.com';
  encrypted_password: 123456;
  full_name: 'Pablo Minetto';
  photo: '#';
  role: 'Nutritionist';
  language: 'Arabic';
  nationality: 'Arabic';
},
{
  email: 'xingxao@gmail.com';
  encrypted_password: 123456;
  full_name: 'Xing Xao';
  photo: '#';
  role: 'Nutritionist';
  language: 'Chinese Mandarin';
  nationality: 'Chinese';
  },
  {
  email: 'abdaluzza@gmail.com';
  encrypted_password: 123456;
  full_name: 'Abd al-Uzza';
  photo: '#';
  role: 'Nutritionist';
  language: 'Arabic';
  nationality: 'Arabic';
  },
  {
  email: 'emiliaguiñazu@gmail.com';
  encrypted_password: 123456;
  full_name: 'Emilia Guiñazu';
  photo: '#';
  role: 'Nutritionist';
  language: 'Spanish';
  nationality: 'Argentinian'; 
},
{
  email: 'delphincorentine@gmail.com';
  encrypted_password: 123456;
  full_name: 'Delfine Corentine';
  photo: '#';
  role: 'Nutritionist';
  language: 'French';
  nationality: 'French';
},
{
  email: 'jhonpaul@gmail.com';
  encrypted_password: 123456;
  full_name: 'Jhon Paul';
  photo: '#';
  role: 'Nutritionist';
  language: 'English';
  nationality: 'English';
},
{
  email: 'maotzetung@gmail.com';
  encrypted_password: 123456;
  full_name: 'Mao Tze Tung';
  photo: '#';
  role: 'Nutritionist';
  language: 'Chinese Mandarin';
  nationality: 'Chinese';
  },
  {
  email: 'abdelfattah@gmail.com';
  encrypted_password: 123456;
  full_name: 'Abdel Fattah';
  photo: '#';
  role: 'Nutritionist';
  language: 'Arabic';
  nationality: 'Arabic';
  },
  {
  email: 'marcopolo@gmail.com';
  encrypted_password: 123456;
  full_name: 'Marco Polo';
  photo: '#';
  role: 'Nutritionist';
  language: 'Italian';
  nationality: 'Italian';
  },
  {
  email: 'joaosilva@gmail.com';
  encrypted_password: 123456;
  full_name: 'Joao Silva';
  photo: '#';
  role: 'Nutritionist';
  language: 'Portuguese';
  nationality: 'Portuguese';
  }
]);

services = Service.create([{ 
  speciality: 'Sports Nutritionist';
  price: 100;
  user_id: 1;
  },
  { 
  speciality: 'Vegan Nutritionist';
  price: 100;
  user_id: 2;
  },
  { 
  speciality: 'Keto Nutritionist';
  price: 100;
  user_id: 3;
  },
  { 
  speciality: 'Pediatric Nutritionist';
  price: 100;
  user_id: 4;
  },
  { 
  speciality: 'Oncology Nutritionist';
  price: 100;
  user_id: 5;
  },
  { 
  speciality: 'Eating Disorder Nutritionist';
  price: 100;
  user_id: 6;
  }
]);

bookings = Booking.create([{ 
  location: 'Amsterdam';
  booking_date: '2021-07-30 14:00:00 UTC';
  user_id: '1';
  service_id: '1';
  },
  { 
  location: 'Madrid';
  booking_date: '2021-07-30 14:00:00 UTC';
  user_id: '2';
  service_id: '3';
  },
  { 
  location: 'Berlin';
  booking_date: '2021-07-30 14:00:00 UTC';
  user_id: '4';
  service_id: '5';
  },
  { 
  location: 'Paris';
  booking_date: '2021-07-30 14:00:00 UTC';
  user_id: '5';
  service_id: '6';
  }]);

  patients = Patient.create([{
    email: 'abdelfattah@gmail.com';
    encrypted_password: 123456;
    full_name: 'Abdel Fattah';
    photo: '#';
    role: 'Patient';
    language: 'Arabic';
    nationality: 'Arabic';
    },
    {
    email: 'marcopolo@gmail.com';
    encrypted_password: 123456;
    full_name: 'Marco Polo';
    photo: '#';
    role: 'Patient';
    language: 'Italian';
    nationality: 'Italian';
    },
    {
    email: 'joaosilva@gmail.com';
    encrypted_password: 123456;
    full_name: 'Joao Silva';
    photo: '#';
    role: 'Patient';
    language: 'Portuguese';
    nationality: 'Portuguese';
    }
  ]);

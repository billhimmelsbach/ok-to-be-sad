USERS = [
  {
    first_name: "Nathan",
    last_name: "Allen",
    email: "NathanAllen@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
  {
    first_name: "Justin",
    last_name: "Castilla",
    email: "JustinCastilla@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
  {
    first_name: "Ben",
    last_name: "Manning",
    email: "BenManning@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
  {
    first_name: "Melissa",
    last_name: "Carlson",
    email: "MelissaCarlson@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/a8f6040c-ad4a-408b-858c-dbb6b2198ecb/"
  },
  {
    first_name: "Bill",
    last_name: "Himmelsbach",
    email: "BillHimmelsbach@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/41f452c8-6397-430a-8515-98e621f1b914/"
  },
  {
    first_name: "Daniel",
    last_name: "Oh",
    email: "DanielOh@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/2da7a630-4469-4ce3-be51-b38cc3d2f6d3/"
  },
  {
    first_name: "David",
    last_name: "Kim",
    email: "DavidKim@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/8ecdb3da-528b-4984-a530-9e4862e362d7/"
  },
  {
    first_name: "John",
    last_name: "Smith",
    email: "JohnSmith@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
  {
    first_name: "Jane",
    last_name: "Smith",
    email: "JaneSmith@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
  {
    first_name: "Bob",
    last_name: "Ross",
    email: "BobRoss@WDI30.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/"
  },
]

p User.create(USERS)

u = User.all
puts "Seeded #{u.count} users."
puts "-----------"

ARTICLES = [
  {
    title: "Crow-M-G!!! Bird flies into Muni bus",
    content: "https://ucarecdn.com/ba8a2930-8d01-4c4c-82ff-24dd545d4c46/",
    content_type: "image",
    user_id: 1,
  },
  {
    title: "Roger Rabbit takes the 19-Polk to Toontown",
    content: "https://ucarecdn.com/31d96850-b864-4665-9e43-3d7f8888ad98/",
    content_type: "image",
    user_id: 2,
  },
]

p Article.create(ARTICLES)
a = Article.all

puts "Seeded #{a.count} articles."

puts "-----------"

MESSAGES = [
  {
    body: "Test",
    user_id: "1",
    seen: false,
    receiver_id: "2",
  }
]

p Message.create(MESSAGES)
m = Message.all

puts "Seeded #{m.count} messages"

puts "-----------"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

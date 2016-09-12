USERS = [
  {
    first_name: "Bill",
    last_name: "Himmelsbach",
    email: "test@test.com",
    password: "test",
    password_confirmation: "test",
    image: "https://ucarecdn.com/41f452c8-6397-430a-8515-98e621f1b914/"
  },
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
]

p User.create(USERS)

u = User.all
puts "Seeded #{u.count} users."
puts "-----------"

ARTICLES = [
  {
    title: "The Dirty Thirty",
    content: "https://ucarecdn.com/ff4f3944-6587-497d-9896-3ea8e8d2aefb/" ,
    content_type: "image",
    user_id: 1
  },
  {
    title: "Ghost Hunting With The Fam",
    content: "https://ucarecdn.com/8f54a82a-47d6-485c-b947-5ec5e4aceceb/" ,
    content_type: "image",
    user_id: 1
  },
  {
    title: "Puppies Learning to Howl",
    content: "https://www.youtube.com/watch?v=eNHDG-2w1xo",
    content_type: "video",
    user_id: 1
  },
  {
    title: "Beyonce",
    content: "Who runs the world? GIRLS.",
    content_type: "quote",
    user_id: 1
  },
  {
    title: "Tightrope by Janelle Monae",
    content: "https://open.spotify.com/track/1ljzHUgt2SU2ADkhfa9eBC",
    content_type: "music",
    user_id: 1
  },
  {
    title: "Dad's Bicycle Art",
    content: "https://ucarecdn.com/702fa6d9-cb1c-48f4-a4be-7cc7c123b494/",
    content_type: "image",
    user_id: 1
  },
  {
    title: "Countdown by Beyonce",
    content: "https://open.spotify.com/track/3axkNosdVQLZiq1HakuGhc",
    content_type: "song",
    user_id: 1
  },
  {
    title: "Zipper Being Awesome!",
    content: "https://ucarecdn.com/bf10b940-9805-4f9b-8be6-c7b88a48e95c/",
    content_type: "image",
    user_id: 1
  },
  {
    title: "Hannah and Josh Come To Cleveland!",
    content: "https://ucarecdn.com/80cfedbd-e10d-4882-8731-b0d582a56983/",
    content_type: "image",
    user_id: 1
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

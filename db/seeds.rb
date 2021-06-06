# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PASSWORD = "supersecret"  

User.destroy_all()
Pet.destroy_all()

super_user = User.create( 
  first_name: "Rubeus",
  last_name: "Hagrid",
  email: "hagrid@hogwarts.edu", 
  is_admin: true,
  password: PASSWORD,
)

User.create( 
  first_name: "Hermione",
  last_name: "Granger",
  email: "hermione@hogwarts.edu", 
  is_admin: false,
  password: PASSWORD,
)

User.create( 
  first_name: "Neville",
  last_name: "Longbottom",
  email: "neville@hogwarts.edu", 
  is_admin: false,
  password: PASSWORD,
)

User.create( 
  first_name: "Fred",
  last_name: "Weasly",
  email: "fred@hogwarts.edu", 
  is_admin: false,
  password: PASSWORD,
)

User.create( 
  first_name: "Albus",
  last_name: "Dumbledore",
  email: "dumbledore@hogwarts.edu", 
  is_admin: false,
  password: PASSWORD,
)

User.create( 
  first_name: "Ron",
  last_name: "Weasly",
  email: "ron@hogwarts.edu", 
  is_admin: false,
  password: PASSWORD,
)

puts Cowsay.say("Generated #{User.count} users.", :tux)

Pet.create(
  name: "Fluffy",
  pet_type: "Cerberus",
  image_url: "https://i.redd.it/3jj77rksd9gz.jpg",
  description: "Perfect guard dog for tiny red objects.",
  is_available: true,
  user_id: 1
)

Pet.create(
  name: "Norberta",
  pet_type: "Norwegian Ridgeback",
  image_url: "https://i.pinimg.com/originals/2b/fa/a3/2bfaa386e966038c43e204896f60497a.jpg",
  description: "Not recommended to rent if you live in a wooden house.",
  is_available: false,
  user_id: 1
)

Pet.create(
  name: "Crookshanks",
  pet_type: "Half-kneazle",
  image_url: "http://www.quirkbooks.com/sites/default/files/u1168/91220.gif",
  description: "Great judge of character. A little grumpy.",
  is_available: true,
  user_id: 2
)

Pet.create(
  name: "Trevor",
  pet_type: "Toad",
  image_url: "https://images.unsplash.com/photo-1611658678147-6f89b9912cb6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80",
  description: "Not very useful. Goes missing a lot. Can be a loving companion, though.",
  is_available: true,
  user_id: 3
)

Pet.create(
  name: "Fluff",
  pet_type: "Pygmy Puff",
  image_url: "",
  description: "Very cute and cuddly. Miniature version of a Puffskien",
  is_available: true,
  user_id: 4
)

Pet.create(
  name: "Aragog",
  pet_type: "Giant Spider",
  image_url: "https://images.unsplash.com/photo-1532802245604-c567f1acd48e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1626&q=80",
  description: "Can lend a helping hand... or eight. Might be dangerous if you did not earn his loyalty.",
  is_available: false,
  user_id: 1
)

Pet.create(
  name: "Buckbeak",
  pet_type: "Hippogriff",
  image_url: "",
  description: "Very useful if you need transportation.",
  is_available: false,
  user_id: 1
)

Pet.create(
  name: "Fawkes",
  pet_type: "Phoenix",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/4/43/Phoenix-Fabelwesen.jpg",
  description: "Very intelligent and can heal wounds.  Extra fee if he is reborn in your care.",
  is_available: true,
  user_id: 5
)

Pet.create(
  name: "Scrabbles",
  pet_type: "Rat",
  image_url: "https://images.unsplash.com/photo-1565618953310-18439a7d4609?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1342&q=80",
  description: "Not very useful. Very lazy. Needs lots of food.",
  is_available: true,
  user_id: 6
)

Pet.create(
  name: "Not Hedwig",
  pet_type: "Owl Impersonator",
  image_url: "https://images.unsplash.com/photo-1471623817296-aa07ae5c9f47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80",
  description: "Chicken who thinks he's an owl. Not registered by Owl Post",
  is_available: true,
  user_id: 1
)

puts Cowsay.say("Generated #{Pet.count} pets.", :dragon)

Review.create(
  title: "Weakness: music",
  rating: 3,
  body: "Falls asleep if you play a bit of music, which is useful to know... if you're not the one who needs something guarded.",
  pet_id: 1,
  user_id: 2
)

Review.create(
  title: "No Thanks!",
  rating: 2,
  body: "A cat? Is that what they told you? It looks more like a pig with hair if you ask me.",
  pet_id: 3,
  user_id: 6
)

Review.create(
  title: "Blimey!",
  rating: 1,
  body: "Why spiders? Why couldn’t it be ‘follow the butterflies’?",
  pet_id: 6,
  user_id: 6
)

puts Cowsay.say("Generated #{Review.count} reviews.", :frogs)

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

puts Cowsay.say("Generated #{User.count} users.", :tux)

Pet.create(
  name: "Fluffy",
  pet_type: "Cerberus",
  image_url: "https://i.imgur.com/neAgqHx.jpg?fb",
  description: "Perfect guard dog for tiny red objects.",
  is_available: true,
  user_id: 1
)

Pet.create(
  name: "Norberta",
  pet_type: "Norwegian Ridgeback",
  image_url: "https://i.pinimg.com/originals/2b/fa/a3/2bfaa386e966038c43e204896f60497a.jpg",
  description: "Not recommended for if you live in a wooden house.",
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

puts Cowsay.say("Generated #{Pet.count} pets.", :dragon)

Review.create(
  title: "Weakness: music",
  rating: 3,
  body: "Falls asleep if you play a bit of music, which is useful to know... if you're not the one who needs something guarded.",
  pet_id: 1,
  user_id: 2
)

puts Cowsay.say("Generated #{Review.count} reviews.", :frogs)

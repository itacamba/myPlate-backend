# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Dish.destroy_all


#Customers
u1 = User.create(name: "Lola", email: "lola@mail.com", password_digest: "pass", about: "I am a human being" )
u2 = User.create(name: "Mary", email: "mary@mail.com", password_digest: "pass", about: "I am a human being" )
#Chefs
c1 = User.create(name: "Francois", email: "fran@mail.com", password_digest: "pass", about: "I am a human being", is_chef: true )
c2 = User.create(name: "Dave", email: "dave@mail.com", password_digest: "pass", about: "I am a human being", is_chef: true )
c3 = User.create(name: "Beza", email: "beza@mail.com", password_digest: "pass", about: "I make a killer Kitfo", is_chef: true)
#Events

e1 = Event.create(party_size: 2, chef: c1, customer_id: u1.id, date: Date.new(2009,10,9) , occasion: "Anniversary")
e2 = Event.create(party_size: 4, chef: c1, customer_id: u2.id, date: Date.new(2009,10,20) , occasion: "Birthday")
e3 = Event.create(party_size: 3, chef: c2, customer_id: u1.id, date: Date.new(2009,11,19) , occasion: "Baptism")


#Dishes
d1 = Dish.create(name: "Kitfo", chef: c2 , cuisine: "Etiopian", description: "Delicious food so you can eat it and then eat some more.")
d2 = Dish.create(name: "Ravioli con Carne", chef: c3 , cuisine: "Italian", description:"Delicious food so you can eat it and then eat some more." )
d3 = Dish.create(name: "Sushi", chef: c2 , cuisine: "Asian", description: "Delicious food so you can eat it and then eat some more.")
d4 = Dish.create(name: "Arancini con Queso", chef: c1 , cuisine: "French", description:"Delicious food so you can eat it and then eat some more." )
d5 = Dish.create(name: "Doro Wet", chef: c2 , cuisine: "African", description: "Delicious food so you can eat it and then eat some more.")
d6 = Dish.create(name: "Greasy Hamburger", chef: c1 , cuisine: "American", description: "Delicious food so you can eat it and then eat some more.")


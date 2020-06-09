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
c1 = User.create(name: "Francois Chang", email: "fran@mail.com", password_digest: "pass", about: "I am a human being", is_chef: true )
c2 = User.create(name: "Dave Molina", email: "dave@mail.com", password_digest: "pass", about: "I am a human being", is_chef: true )
c3 = User.create(name: "Beza Sirak", email: "beza@mail.com", password_digest: "pass", about: "I make a killer Kitfo", img: "https://ca.slack-edge.com/T02MD9XTF-URUT7DR3P-ecbb7719005a-512",is_chef: true)
c4 = User.create(name: "Bill Gates", email: "bill@mail.com", password_digest: "pass", about: "I can also make real food, not only virtual", is_chef: true)
c5 = User.create(name: "Elon Musk", email: "elon@mail.com", password_digest: "pass", about: "Are you ready to try food out of this world?", is_chef: true)


#Dishes
d1 = Dish.create(name: "Kitfo", user: c3 , cuisine: "Etiopian", description: "Delicious food so you can eat it and then eat some more.", img: "https://i.pinimg.com/originals/a9/c1/82/a9c182c0221388027b13e91853bd4d35.png")
d2 = Dish.create(name: "Ravioli con Carne", user: c3 , cuisine: "Italian", description:"Delicious food so you can eat it and then eat some more." )
d3 = Dish.create(name: "Sushi", user: c2 , cuisine: "Asian", description: "Delicious food so you can eat it and then eat some more.")
d4 = Dish.create(name: "Arancini con Queso", user: c1 , cuisine: "French", description:"Delicious food so you can eat it and then eat some more." )
d5 = Dish.create(name: "Doro Wet", user: c2 , cuisine: "African", description: "Delicious food so you can eat it and then eat some more.")
d6 = Dish.create(name: "Greasy Hamburger", user: c1 , cuisine: "American", description: "Delicious food so you can eat it and then eat some more.")


#Events

e1 = Event.create(party_size: 2, chef: c1, customer_id: u1.id, date: Date.new(2009,10,9) , ocassion: "Anniversary", dish_id: d4.id)
e2 = Event.create(party_size: 4, chef: c1, customer_id: u2.id, date: Date.new(2009,10,20) , ocassion: "Birthday", dish_id: d6.id)
e3 = Event.create(party_size: 3, chef: c2, customer_id: u1.id, date: Date.new(2009,11,19) , ocassion: "Baptism", dish_id: d3.id)




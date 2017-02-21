# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Server.create({name: 'Anna', username: 'anna', password: 'password'})
Server.create({name: 'Blake', username: 'blake', password: 'password'})
Server.create({name: 'Brendan', username: 'brendan', password: 'password'})
Server.create({name: 'Michelle', username: 'michelle', password: 'password'})
Server.create({name: 'Irwin', username: 'irwin', password: 'password'})

Table.create({server: Server.all.sample})
Table.create({server: Server.all.sample})
Table.create({server: Server.all.sample})
Table.create({server: Server.all.sample})
Table.create({server: Server.all.sample})

Customer.create({name: 'Tariq', table: Table.all.sample})
Customer.create({name: 'Matt', table: Table.all.sample})
Customer.create({name: 'Carolyn', table: Table.all.sample})

Customer.create({name: 'Colette', table: Table.all.sample})
Customer.create({name: 'Rachel', table: Table.all.sample})
Customer.create({name: 'Dwayne', table: Table.all.sample})

Customer.create({name: 'Alex', table: Table.all.sample})
Customer.create({name: 'Kasia', table: Table.all.sample})
Customer.create({name: 'Samantha', table: Table.all.sample})

Item.create({name: 'Pizza', description: 'Pepperoni', price: 4.99})
Item.create({name: 'Hamburger', description: 'Bacon and Cheese', price: 7.99})
Item.create({name: 'Hotdog', description: 'With mustard and ketchup', price: 3.99})
Item.create({name: 'Fried Chicken Wings', description: 'So tasty', price: 9.99})
Item.create({name: 'Burrito', description: 'With guacamole', price: 6.99})
Item.create({name: 'Salad', description: 'Kale and cucumber', price: 5.99})
Item.create({name: 'Grilled Cheese Sandwich', description: 'Cheddar cheese and bacon', price: 2.99})
Item.create({name: 'Bud Light', description: 'Tastes like water', price: 2.99})
Item.create({name: 'Guinness', description: 'Dat head', price: 3.99})
Item.create({name: 'Margarita', description: 'Extra salt', price: 4.99})

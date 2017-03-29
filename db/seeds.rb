# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Actor.create(first_name: 'Brad', last_name: 'Pitt')
a2 = Actor.create(first_name: 'Jonah', last_name: 'Hill')
a3 = Actor.create(first_name: 'Chris', last_name: 'Pratt')
a4 = Actor.create(first_name: 'Robin', last_name: 'Wright')
a5 = Actor.create(first_name: 'Emma', last_name: 'Watson')
a6 = Actor.create(first_name: 'Dan', last_name: 'Stevens')
a7 = Actor.create(first_name: 'Hugh', last_name: 'Jackman')
a8 = Actor.create(first_name: 'Patrick', last_name: 'Stewart')
a9 = Actor.create(first_name: 'Dafne', last_name: 'Keen')

g1 = Genre.create(name: 'Drama')
g2 = Genre.create(name: 'Musical')
g3 = Genre.create(name: 'Action')


m1 = Movie.create(title: 'Moneyball', genre: g1)
m2 = Movie.create(title: 'Beauty and the Beast', genre: g2)
m3 = Movie.create(title: 'Logan', genre: g3)

m1.actors << [a1, a2, a3, a4]
m2.actors << [a5, a6]
m3.actors << [a7, a8, a9]


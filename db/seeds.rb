# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create user
User.create([{name: "Ernesto", email: "ernesto@example.com", password: "ernesto123", color: "blue"},
             {name: "Benjamin", email: "benjamin@example.com", password: "benjamin123", color: "green"},
             {name: "Barbara", email: "barbara@example.com", password: "barba123", color: "purple"}])

# create servicio
Servicio.create([{name: "recorrido.cl"}, {name: "turismo.cl"}])

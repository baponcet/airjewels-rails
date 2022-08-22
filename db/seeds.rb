# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

User.create(email: 'seb.vill@gmail.com', first_name: 'Sebastien', last_name: 'VILLEBRUN', password: 'somepassword',
            password_confirmation: 'somepassword')
User.create(email: 'ba.po@gmail.com', first_name: 'Baptiste', last_name: 'PONCET', password: 'somepassword',
            password_confirmation: 'somepassword')
User.create(email: 'sacha.go@gmail.com', first_name: 'Sacha', last_name: 'GOTAINER', password: 'somepassword',
            password_confirmation: 'somepassword')
User.create(email: 'fa.shah@gmail.com', first_name: 'Fariha', last_name: 'SHAH', password: 'somepassword',
            password_confirmation: 'somepassword')

Jewel.create(name: 'bracelet 1', price_per_day: 10.00, brand: "Histoire d'Or", category: "bracelet", user_id: 1)
Jewel.create(name: 'Rolex DATEJUST', price_per_day: 200.00, brand: 'Rolex', category: 'watch', user_id: 2)
Jewel.create(name: 'Bague Manon', price_per_day: 20.22, brand: 'Cartier', category: 'ring', user_id: 3)
Jewel.create(name: 'Créoles', price_per_day: 10.56, brand: 'Dior', category: 'earring', user_id: 4)

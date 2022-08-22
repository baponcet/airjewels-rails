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

jewel1 = Jewel.new(name: 'bracelet 1', price_per_day: 10.00, brand: "Histoire d'Or", category: "Bracelet", user_id: 1,
                  comment: 'A beautifull bracelet in verry good condition')
file1 = URI.open("https://images.unsplash.com/photo-1611591437281-460bfbe1220a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
jewel1.photo.attach(io: file1, filename: "bracelet.png", content_type: "image/png")
jewel1.save

jewel2 = Jewel.new(name: 'Rolex DATEJUST', price_per_day: 200.00, brand: 'Rolex', category: 'Watch', user_id: 2,
                  comment: 'The best watch ever !!! Goes under wather')
file2 = URI.open("https://images.unsplash.com/photo-1620625515032-6ed0c1790c75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
jewel2.photo.attach(io: file2, filename: "watch.png", content_type: "image/png")
jewel2.save

jewel3 = Jewel.new(name: 'Bague Manon', price_per_day: 20.22, brand: 'Cartier', category: 'Ring', user_id: 3,
                  comment: 'Ideal for a night out')
file3 = URI.open("https://images.unsplash.com/photo-1605100804763-247f67b3557e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
jewel3.photo.attach(io: file3, filename: "ring.png", content_type: "image/png")
jewel3.save

jewel4 = Jewel.new(name: 'Créoles', price_per_day: 10.56, brand: 'Dior', category: 'Earring', user_id: 4,
                  comment: 'These earings were worn by the most famous women')
file4 = URI.open("https://images.unsplash.com/photo-1615655114865-4cc1bda5901e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")
jewel4.photo.attach(io: file4, filename: "earring.png", content_type: "image/png")
jewel4.save

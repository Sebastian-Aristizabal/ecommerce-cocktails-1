# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Cocktail.destroy_all
Category.destroy_all
Store.destroy_all
User.destroy_all

# Usuarios

user_1 = User.new(first_name: "Harry", last_name: "Potter", email: "harrypotter@gmail.com", password: "123456", address: "Calle feliz", birth_date: "1980-07-31")
#photo_1 = File.open('../app/assets/images/user_1.png')
#user_1.photo.attach(io: photo_1, filename: "user_1.png", content_type: "image/png")
user_1.save

user_2 = User.new(first_name: "Barack", last_name: "Obama", email: "barackobama@gmail.com", password: "123456", address: "Calle triste", birth_date: "1975-07-31")
#photo_2 = File.open('../app/assets/images/user_2.jpg')
#user_2.photo.attach(io: photo_2, filename: "user_2.jpg", content_type: "image/jpg")
user_2.save

user_3 = User.new(first_name: "Donald", last_name: "Trump", email: "donald@gmail.com", password: "123456", address: "Calle lejos", birth_date: "1970-07-31")
#photo_3 = File.open('/app/assets/images/user_3.jpg')
#user_3.photo.attach(io: photo_3, filename: "user_3.jpg", content_type: "image/jpg")
user_3.save

puts "Usuarios creados"

# Stores

store_1 = Store.new(name: "El bar de Harry", address: "Calle de la Luna 13", time_open: "10:00", time_close: "23:00", user_id: user_1.id)
store_1.save!

store_2 = Store.new(name: "Democrata bar", address: "Avenida siemmpre viva", time_open: "10:00", time_close: "23:00", user_id: user_2.id)
store_2.save!

store_3 = Store.new(name: "El bar de Trump", address: "Calle 16", time_open: "10:00", time_close: "23:00", user_id: user_3.id)
store_3.save!

puts "Stores creados"

# Categorias

category_1 = Category.create!(name:"aperitivos")
category_1.save!

category_2 = Category.create!(name:"refrescantes")
category_2.save!

category_3 = Category.create!(name:"digestivos")
category_3.save!

puts "Categorias creadas"

# Cocktails

# for user_1, store_1
cockail_1 = Cocktail.new(name: "Cocktail 1", ml: 100, ingredients: "Vodka, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_1.id)
cockail_1.save!

cocktail_2 = Cocktail.new(name: "Cocktail 2", ml: 200, ingredients: "ron, vodka, te", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_1.id)
cocktail_2.save!

cockail_3 = Cocktail.new(name: "Cocktail 3", ml: 300, ingredients: "white ron, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_1.id)
cockail_3.save!

# for user_2, store_2
cocktail_4 = Cocktail.new(name: "Cocktail 4", ml: 100, ingredients: "Vodka, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_2.id)
cocktail_4.save!

cocktail_5 = Cocktail.new(name: "Cocktail 5", ml: 200, ingredients: "ron, vodka, te", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_2.id)
cocktail_5.save!

cocktail_6 = Cocktail.new(name: "Cocktail 6", ml: 300, ingredients: "white ron, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_2.id)
cocktail_6.save!

# for user_3, store_3
cocktail_7 = Cocktail.new(name: "Cocktail 7", ml: 100, ingredients: "Vodka, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_3.id)
cocktail_7.save!

cocktail_8 = Cocktail.new(name: "Cocktail 8", ml: 200, ingredients: "ron, vodka, te", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_3.id)
cocktail_8.save!

cocktail_9 = Cocktail.new(name: "Cocktail 9", ml: 300, ingredients: "white ron, Gin, Vermouth", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_3.id)
cocktail_9.save!

puts "Cocktails creados"

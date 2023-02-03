# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Category.destroy_all

# Categorias

category_1 = Category.create!(name:"aperitivos")
category_1.save!

category_2 = Category.create!(name:"refrescantes")
category_2.save!

category_3 = Category.create!(name:"digestivos")
category_3.save!

puts "Categorias creadas"

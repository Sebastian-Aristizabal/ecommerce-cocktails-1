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

cocktail_1 = Cocktail.new(name: "Old Fashioned", ml: 100, ingredients: "whiskey, sugar, water, and bitters", description: "Just as the name suggests, the Bourbon Old Fashioned is quite an old drink. In fact, it can be connected to the first recorded definition of a cocktail over 200 years ago, which called for spirits, sugar, water, and bitters.", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_1.id)
photo_1 = File.open('app/assets/images/pic1.png')
cocktail_1.photo.attach(io: photo_1, filename: "pic1.png", content_type: "image/png")
cocktail_1.save!

cocktail_2 = Cocktail.new(name: "Pisco Punch", ml: 200, ingredients: "pisco, pineapple, lemon, orange, cloves, and a Champagne", description: "Created by famed bartender Simon Difford in 2004, the Pisco Punch is new to the list of cocktails this year. But with its tropical combination of pisco, pineapple, lemon, orange, cloves, and a Champagne float, it’s not hard to see why its popularity is on the rise.", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_1.id)
photo_2 = File.open('app/assets/images/pic8.png')
cocktail_2.photo.attach(io: photo_2, filename: "pic8.png", content_type: "image/png")
cocktail_2.save!

cocktail_3 = Cocktail.new(name: "Sidecar", ml: 300, ingredients: "brandy, lemon, and triple sec", description: "Brandy, tragically underrepresented on this list, earns a well-deserved moment in the spotlight as one of the world’s most ordered cocktails. The Sidecar is a good place to start for those not familiar with the category-spanning spirit: The drink mixes brandy, lemon, and triple sec, making a tart, refreshing tipple.", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_1.id)
photo_3 = File.open('app/assets/images/pic9.png')
cocktail_3.photo.attach(io: photo_3, filename: "pic9.png", content_type: "image/png")
cocktail_3.save!

cocktail_4 = Cocktail.new(name: "Corpse Reviver #2", ml: 100, ingredients: "gin, lemon juice, Cointreau, Lillet Blanc, and a dash of absinthe", description: "Another new addition to the list, the Corpse Reviver #2 is making a comeback ", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_1.id)
photo_4 = File.open('app/assets/images/pic10.png')
cocktail_4.photo.attach(io: photo_4, filename: "pic10.png", content_type: "image/png")
cocktail_4.save!

cocktail_5 = Cocktail.new(name: "Blood & Sand", ml: 200, ingredients: "whisky, sweet vermouth, cherry liqueur, and orange juice", description: "This Scotch-based concoction has been around since the 1930s and has clearly stood the test of time.", price: 10, status: true, discount: 15, category_id: category_2.id, store_id: store_1.id)
photo_5 = File.open('app/assets/images/pic11.png')
cocktail_5.photo.attach(io: photo_5, filename: "pic11.png", content_type: "image/png")
cocktail_5.save!

cocktail_6 = Cocktail.new(name: "Tommy’s Margarita", ml: 300, ingredients: "blanco tequila, lime juice, agave nectar", description: "Developed by bartender Julio Bermejo of San Francisco’s Tommy’s Mexican Restaurant in the 1990s, the Tommy’s Margarita swaps out the orange liqueur in the traditional Margarita and doubles the amount of agave.", price: 10, status: true, discount: 0, category_id: category_3.id, store_id: store_1.id)
photo_6 = File.open('app/assets/images/pic12.png')
cocktail_6.photo.attach(io: photo_6, filename: "pic12.png", content_type: "image/png")
cocktail_6.save!

# for user_2, store_2
cocktail_7 = Cocktail.new(name: "Last Word", ml: 100, ingredients: "gin, green chartreuse, Maraschino liqueur, and lime juice", description: "A drink from the days of Prohibition, the revival of the Last Word — which combines gin, green chartreuse, Maraschino liqueur, and lime juice — has been credited to bartender Murray Stenson, who came across the drink in an old bar manual while working at Seattle’s Zig Zag Café in 2004.", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_2.id)
photo_7 = File.open('app/assets/images/pic13.png')
cocktail_7.photo.attach(io: photo_7, filename: "pic13.png", content_type: "image/png")
cocktail_7.save!

cocktail_8 = Cocktail.new(name: "Painkiller", ml: 200, ingredients: "pineapple, orange juices and coconut cream", description: "A 1970s staple, the Painkiller was first mixed up in the British Virgin Islands with Pusser’s Navy Rum. Add pineapple and orange juices, plus a dollop of coconut cream, and you’re instantly transported to the tropics.", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_2.id)
photo_8 = File.open('app/assets/images/pic31.png')
cocktail_8.photo.attach(io: photo_8, filename: "pic31.png", content_type: "image/png")
cocktail_8.save!

cocktail_9 = Cocktail.new(name: "Ti’ Punch", ml: 300, ingredients: "rhum agricole, cane sugar syrup and squeeze of lime", description: "Daiquiri lovers, this drink is for you. The national drink of Martinique is made with rhum agricole and cane sugar syrup, plus a squeeze of lime for a simple cocktail worth sipping any season.", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_2.id)
photo_9 = File.open('app/assets/images/pic15.png')
cocktail_9.photo.attach(io: photo_9, filename: "pic15.png", content_type: "image/png")
cocktail_9.save!

cocktail_10 = Cocktail.new(name: "Hanky-Panky", ml: 100, ingredients: "gin, sweet vermouth, and a few dashes of Fernet-Branca", description: "Bartenders around the world are increasingly showing their love for amari, pushing the category into the mainstream.", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_2.id)
photo_10 = File.open('app/assets/images/pic40.png')
cocktail_10.photo.attach(io: photo_10, filename: "pic40.png", content_type: "image/png")
cocktail_10.save!

cocktail_11 = Cocktail.new(name: "Cosmopolitan", ml: 200, ingredients: "vodka, triple sec, cranberry, and lime", description: "The days of the Cosmo as the bartender’s piñata are over. You may even see crafted spins on this drink, but mostly, there’s indifference.", price: 10, status: true, discount: 15, category_id: category_2.id, store_id: store_2.id)
photo_11 = File.open('app/assets/images/pic17.png')
cocktail_11.photo.attach(io: photo_11, filename: "pic17.png", content_type: "image/png")
cocktail_11.save!

cocktail_12 = Cocktail.new(name: "Ramos Gin Fizz", ml: 300, ingredients: "Pusser’s Navy Rum, pineapple juice,  squeezed orange juice, cream of coconut", description: "Fluffy, striking, and endlessly delicious, the Ramos Gin Fizz was created by New Orleans bartender Henry Charles Ramos in the late 19th century.", price: 10, status: true, discount: 0, category_id: category_3.id, store_id: store_2.id)
photo_12 = File.open('app/assets/images/pic18.png')
cocktail_12.photo.attach(io: photo_12, filename: "pic18.png", content_type: "image/png")
cocktail_12.save!

# for user_3, store_3
cocktail_13 = Cocktail.new(name: "Bellini", ml: 100, ingredients: "White Peach Purée, Prosecco", description: "This famous Prosecco-based brunch staple was invented by Giuseppe Cipriani at Harry’s Bar in Venice, Italy. The two-ingredient cocktail simply combines the Italian bubbly with peach puree in a flute glass.", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_3.id)
photo_13 = File.open('app/assets/images/pic27.png')
cocktail_13.photo.attach(io: photo_13, filename: "pic27.png", content_type: "image/png")
cocktail_13.save!

cocktail_14 = Cocktail.new(name: "Be´s Knees", ml: 200, ingredients: "gin, squeezed lemon juice, honey syrup, lemon twist", description: "Honey is the star of this simply delicious Prohibition-era cocktail. Its combination of gin, lemon juice, and honey syrup is balanced and quaffable. Plus, it’s easy to make and perfect for batching at parties.", price: 10, status: true, discount: 20, category_id: category_2.id, store_id: store_3.id)
photo_14 = File.open('app/assets/images/pic20.png')
cocktail_14.photo.attach(io: photo_14, filename: "pic20.png", content_type: "image/png")
cocktail_14.save!

cocktail_15 = Cocktail.new(name: "Long Island Iced Tea", ml: 300, ingredients: "light rum, vodka, tequila, and gin", description: "New to the list in 2020, the Long Island Iced Tea jumped from No. 49 to No. 35 this year. The drink combines four spirits: light rum, vodka, tequila, and gin. It’s the ultimate cocktail for indecisive imbibers. Love it or hate it, this saccharine drink is back.", price: 10, status: false, discount: 10, category_id: category_3.id, store_id: store_3.id)
photo_15 = File.open('app/assets/images/pic36.png')
cocktail_15.photo.attach(io: photo_15, filename: "pic36.png", content_type: "image/png")
cocktail_15.save!

cocktail_16 = Cocktail.new(name: "Aviation", ml: 100, ingredients: "crème de violette or crème Yvette, Maraschino liqueur, gin, and lemon juice", description: "After acquainting yourself with Tom Collins, meet an Aviation: Served up in a Martini glass, the gorgeous lavender-colored cocktail is made with crème de violette or crème Yvette, Maraschino liqueur, gin, and lemon juice. The Aviation has had a bumpy flight these past few years, descending 14 spots since 2020.", price: 10, status: true, discount: 0, category_id: category_1.id, store_id: store_3.id)
photo_16 = File.open('app/assets/images/pic28.png')
cocktail_16.photo.attach(io: photo_16, filename: "pic28.png", content_type: "image/png")
cocktail_16.save!

cocktail_17 = Cocktail.new(name: "Vesper", ml: 200, ingredients: "gin, vodka, and Lillet.", description: "When James Bond wasn’t drinking terrible Martinis, he often ordered a Vesper, a drink invented by Bond author Ian Fleming. The cocktail first popped up in Fleming’s “Casino Royale” in 1953.", price: 10, status: true, discount: 15, category_id: category_2.id, store_id: store_3.id)
photo_17 = File.open('app/assets/images/pic29.png')
cocktail_17.photo.attach(io: photo_17, filename: "pic29.png", content_type: "image/png")
cocktail_17.save!

cocktail_18 = Cocktail.new(name: "Old Cuban", ml: 300, ingredients: "aged rum, mint leaves, simple syrup, lime juice", description: "Famed bartender Audrey Saunders created the Old Cuban in 2001 at the now shuttered Pegu Club. A take on the classic Mojito, the drink combines aged rum, mint leaves, simple syrup, lime juice, Angostura bitters, and a Champagne floater. The result is a more celebratory version of the Cuban classic.", price: 10, status: true, discount: 10, category_id: category_3.id, store_id: store_3.id)
photo_18 = File.open('app/assets/images/pic24.png')
cocktail_18.photo.attach(io: photo_18, filename: "pic24.png", content_type: "image/png")
cocktail_18.save!

puts "Cocktails creados"

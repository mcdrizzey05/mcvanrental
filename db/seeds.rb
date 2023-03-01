# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.create(user_id: 1, offer_id: 2, start_date: 20231113, end_date: 20231115)
Booking.create(user_id: 2, offer_id: 3, start_date: 20230411, end_date: 20230412)
Booking.create(user_id: 3, offer_id: 1, start_date: 20230601, end_date: 20230610)
Booking.create(user_id: 4, offer_id: 2, start_date: 20230905, end_date: 20230925)

User.create(name: "Alina", email: "alina@alina.com", password: "123456")
User.create(name: "MC", email: "mc@mc.com", password: "123456")
User.create(name: "Andreia", email: "andreia@andreia.com", password: "123456")
User.create(name: "Lucas", email: "lucas@lucas.com", password: "123456")

Offer.create(title: "1969 Westfalia", description: "Very cool van 10/10", price: 199, user_id: 1, location: "Berlin", img_url: "https://bringatrailer.com/wp-content/uploads/2020/01/1969_volkswagen_type_2_westfalia_1578445918cfcd2Westy-BaT-pictures-73.jpg?fit=940%2C627")
Offer.create(title: "Retro Blue Westfalia", description: "Perfect for a small family!", price: 300, user_id: 2, location: "Hamburg", img_url: "https://bringatrailer.com/wp-content/uploads/2017/01/DSC_1512.jpg?fit=940%2C627")
Offer.create(title: "Girls Weekend Camper Van", description: "For a fun weekend with your pals", price: 120, user_id: 3, location: "Berlin", img_url: "https://www.thescarboroughnews.co.uk/webimg/QVNIMTIyNTU5NjQ0.jpg?width=990&quality=65&enable=upscale")
Offer.create(title: "Vintage Yellow Westfalia", description: "Perfect condition, includes beds and stove", price: 150, user_id: 4, location: "Hamburg", img_url: "https://assets.bedful.com/images/667e0235b355cd046c74a332912b8008a1a69bfa/large/vintage-campervan-hire-%7c-retro-campers-classic-campervans//vintage-campervan-hire.jpg")

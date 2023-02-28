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

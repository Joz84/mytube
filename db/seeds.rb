# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(email: "jo@jo.co", password: "azerty")
User.create(email: "bob@co.co", password: "azerty")
User.create(email: "audrey@co.co", password: "azerty")
User.create(email: "coco@co.co", password: "azerty")
User.create(email: "dede@co.co", password: "azerty")
User.create(email: "elo@co.co", password: "azerty")

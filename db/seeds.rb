# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.email = 'admin@yopmail.com'
user.password = 'Pass@123'
user.role = 'admin'
user.save

user = User.new
user.email = 'test@yopmail.com'
user.password = 'Pass@123'
user.role = 'chef'
user.save





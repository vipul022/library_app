# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
#  10.times do 
#   Celebrity.create(
#     name: Faker::Name.name, 
#     notability: Faker::Job.title, 
#     profile_picture: "https://picsum.photos/200/300"
#   )
# end 

10.times do 
  Book.create(
    title: Faker::Book.title, 
    author: Faker::Book.author, 
    Faker::Date.between(from: 10000.days.ago, to: Date.today)
  )
  puts "created #{i} records"
end 
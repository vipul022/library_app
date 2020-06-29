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

Author.create(
  name: "J.K Rowling",
  date_of_birth: "1965-07-31"


)
Author.create(
  name: "DAN BROWN",
  date_of_birth: "1965-07-31"
  

)

Book.create(
  title: "Harry Potter",
  author_id: 1

)
# )
# p "seeding database"
# 3.times do 
#   author = Author.create(
#     name: Faker::Book.author,
#     date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65)
  
#   )
#     2.times do 
#       Book.create(
#         title: Faker::Book.title, 
#         author: author.id.to_s, 
#         published_date: Faker::Date.between(from: 10000.days.ago, to: Date.today)
#       )
      
#     end 
# end    
# p "work done"
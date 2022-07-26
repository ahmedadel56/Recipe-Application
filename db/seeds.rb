# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
   @count = 1
5.times do |user|
   user = User.create(name: "Ahmed #{@count}", id: @count)
   @count +=1
end
Food.create(name: 'Koshary', measurement_unit: "gram", price: 2.5, quantity: 2.7,user_id: 1 )
Food.create(name: 'Tameya', measurement_unit: "gram", price: 6.6, quantity: 3.1,user_id: 1 )
Food.create(name: 'Tarab', measurement_unit: "gram", price: 22.5, quantity: 1.7,user_id: 1 )
Food.create(name: 'flafel', measurement_unit: "gram", price: 25.3, quantity: 2.1,user_id: 1 )
Food.create(name: 'fool', measurement_unit: "gram", price: 2.5, quantity: 2.7,user_id: 1 )
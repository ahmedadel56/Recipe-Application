# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{name: "John"}, {name: "Jane"}, {name: "Bob"}, {name: "Mary"}])

recipes = Recipe.create([
  {name: "Recipe 1", description: "This is the description of Recipe 1", preparation_time: 1.5, cooking_time: 2.5, public: true, user_id: 1}, 
  {name: "Recipe 2", description: "This is the description of Recipe 2", preparation_time: 2.5, cooking_time: 3.5, public: true, user_id: 2}, 
  {name: "Recipe 3", description: "This is the description of Recipe 3", preparation_time: 3.5, cooking_time: 4.5, public: true, user_id: 3}, 
  {name: "Recipe 4", description: "This is the description of Recipe 4", preparation_time: 4.5, cooking_time: 5.5, public: true, user_id: 4},
  {name: "Recipe 5", description: "This is the description of Recipe 5", preparation_time: 5.5, cooking_time: 6.5, public: false, user_id: 1},
  {name: "Recipe 6", description: "This is the description of Recipe 6", preparation_time: 6.5, cooking_time: 7.5, public: false, user_id: 2},
  {name: "Recipe 7", description: "This is the description of Recipe 7", preparation_time: 7.5, cooking_time: 8.5, public: false, user_id: 3},
  {name: "Recipe 8", description: "This is the description of Recipe 8", preparation_time: 8.5, cooking_time: 9.5, public: false, user_id: 4},
])
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

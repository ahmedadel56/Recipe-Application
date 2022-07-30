# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([
  {name: "John", email: "john@example.com", password: "password"}, 
  {name: "Jane", email: "jane@example.com", password: "password"}, 
  {name: "Bob", email: "bob@example.com", password: "password"}
])

recipes = Recipe.create([
  {name: "Recipe 1", description: "This is the description of Recipe 1", preparation_time: 1.5, cooking_time: 2.5, public: true, user_id: 1}, 
  {name: "Recipe 2", description: "This is the description of Recipe 2", preparation_time: 2.5, cooking_time: 3.5, public: true, user_id: 2}, 
  {name: "Recipe 3", description: "This is the description of Recipe 3", preparation_time: 3.5, cooking_time: 4.5, public: true, user_id: 3}, 
  {name: "Recipe 5", description: "This is the description of Recipe 5", preparation_time: 5.5, cooking_time: 6.5, public: false, user_id: 1},
  {name: "Recipe 6", description: "This is the description of Recipe 6", preparation_time: 6.5, cooking_time: 7.5, public: false, user_id: 2},
  {name: "Recipe 7", description: "This is the description of Recipe 7", preparation_time: 7.5, cooking_time: 8.5, public: false, user_id: 3}
])

foods = Food.create([
  {name: "Food 1", measurement_unit: 'kg', price: 3, user_id: 1},
  {name: "Food 2", measurement_unit: 'kg', price: 4, user_id: 2},
  {name: "Food 3", measurement_unit: 'g', price: 5, user_id: 3},
  {name: "Food 4", measurement_unit: 'g', price: 6, user_id: 1}
])

recipefoods = RecipeFood.create([
  {recipe_id: 1, food_id: 1, quantity: 1},
  {recipe_id: 1, food_id: 2, quantity: 2},
  {recipe_id: 1, food_id: 3, quantity: 3},
  {recipe_id: 2, food_id: 1, quantity: 4},
  {recipe_id: 2, food_id: 2, quantity: 5},
  {recipe_id: 2, food_id: 3, quantity: 6},
  {recipe_id: 3, food_id: 1, quantity: 7}
])

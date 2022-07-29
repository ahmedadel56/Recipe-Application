require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    user = User.create(name: 'Test User', email: 'tuser4@example.com', password: 'password')

    food = Food.create(user_id: user.id, name: 'Test Food', measurement_unit: 'Test Measurement Unit', price: 1.00)

    recipe = Recipe.create(user_id: user.id, name: 'Test Recipe', preparation_time: 1, cooking_time: 1,
                           description: 'Test Description', public: true)

    @recipe_food = RecipeFood.create(recipe_id: recipe.id, food_id: food.id, quantity: 3)
  end

  it 'is valid with valid attributes' do
    expect(@recipe_food).to be_valid
  end

  it 'returns the correct value' do
    expect(@recipe_food.value_result).to eq(3.00)
  end
end

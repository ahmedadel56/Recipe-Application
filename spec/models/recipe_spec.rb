require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    user = User.create(name: 'Test User', email: 'tuser2@example.com', password: 'password')

    @recipe = Recipe.create(user_id: user.id, name: 'Test Recipe', preparation_time: 1, cooking_time: 1,
                            description: 'Test Description', public: true)
  end

  it 'is valid with valid attributes' do
    expect(@recipe).to be_valid
  end

  it 'is not valid without a name' do
    @recipe.name = nil
    expect(@recipe).to_not be_valid
  end

  it 'is not valid without a preparation time' do
    @recipe.preparation_time = nil
    expect(@recipe).to_not be_valid
  end

  it 'is not valid without a cooking time' do
    @recipe.cooking_time = nil
    expect(@recipe).to_not be_valid
  end
end

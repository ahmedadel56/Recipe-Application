require 'rails_helper'

RSpec.describe 'Recipes', type: :feature do
  before :each do
    @user = User.new(name: 'test', email: 'test7@example.com', password: 'password')
    @user.save!
    @recipe = Recipe.create(name: 'recipe1', user_id: @user.id, public: true, description: 'description')

    sign_in @user
    visit user_recipes_path(@user)
  end

  it 'renders the recipe index page' do
    expect(page).to have_content('Recipes')
  end

  it 'shows add recipe button' do
    expect(page).to have_link('Add Recipe')
  end
end

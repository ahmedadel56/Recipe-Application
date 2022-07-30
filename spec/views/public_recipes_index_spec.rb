require 'rails_helper'

RSpec.describe 'Public Recipes', type: :feature do
  before :each do
    @user = User.create(name: 'test', email: 'test@email.com', password: 'password')
    @recipe1 = Recipe.create(name: 'recipe1', user_id: @user.id, public: true, description: 'description')
    @recipe2 = Recipe.create(name: 'recipe2', user_id: @user.id, public: true, description: 'description2')

    sign_in @user
    visit public_recipes_path
  end

  it 'renders the public recipe index page' do
    expect(page).to have_content('Public Recipes')
  end
end

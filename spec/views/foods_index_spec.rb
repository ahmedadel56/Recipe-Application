require 'rails_helper'

RSpec.describe 'Food List', type: :feature do
  before :each do
    @user = User.create(name: 'test', email: 'test8@gmail.com', password: 'password')
    @food = Food.create(name: 'food1', measurement_unit: 'g', price: 1.00, user_id: @user.id)
    @food2 = Food.create(name: 'food2', measurement_unit: 'g', price: 1.00, user_id: @user.id)

    sign_in @user
    visit user_foods_path(@user)
  end

  it 'renders the food index page' do
    expect(page).to have_content('Food List')
  end

  it 'shows add food button' do
    expect(page).to have_link('Add Food')
  end

  it 'shows food list' do
    expect(page).to have_content(@food.name)
    expect(page).to have_content(@food2.name)
  end
end
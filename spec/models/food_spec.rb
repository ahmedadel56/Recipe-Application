require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:each) do
    user = User.create(name: 'Test User', email: 'tuser3@example.com', password: 'password')

    @food = Food.create(user_id: user.id, name: 'Test Food', measurement_unit: 'Test Measurement Unit', price: 1.00)
  end

  it 'is valid with valid attributes' do
    expect(@food).to be_valid
  end

  it 'is not valid without a name' do
    @food.name = nil
    expect(@food).to_not be_valid
  end

  it 'is not valid without a measurement unit' do
    @food.measurement_unit = nil
    expect(@food).to_not be_valid
  end

  it 'is not valid without a price' do
    @food.price = nil
    expect(@food).to_not be_valid
  end
end

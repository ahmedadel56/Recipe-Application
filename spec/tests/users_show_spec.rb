require 'rails_helper'

RSpec.describe 'User', type: :feature do
  before(:all) do
    @user = User.create(email: 'user@example.com', name: 'Ahmed', password: 'caplin', password_confirmation: 'caplin')
  end
  scenario 'Sign In/ Sign Out', js: true do
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'caplin'
    click_button 'Log in'
    sleep 1
    expect(current_path).to eql(root_path)
    click_link 'Sign Out'
    sleep 1
    expect(current_path).to eql(root_path)
  end
end

RSpec.describe 'User', type: :feature do
  scenario 'Sign Up', js: true do
    visit new_user_registration_path
    fill_in 'Email', with: 'ahmed@example.com'
    fill_in 'Name', with: 'Example'
    fill_in 'Password', with: 'caplin'
    fill_in 'Password confirmation', with: 'caplin'
    click_button 'Sign up'
    sleep 1
    expect(current_path).to eql(user_foods_path(1))
    click_link 'Sign Out'
  end
end

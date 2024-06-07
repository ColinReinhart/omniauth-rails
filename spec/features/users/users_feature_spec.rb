require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'create new user' do
    scenario 'should be successful' do
      visit signup_path
      fill_in 'Username', with: 'testuser'
      fill_in 'Password', with: 'password'
      click_button 'Create User'
  end
end

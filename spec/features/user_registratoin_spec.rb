require 'rails_helper'

RSpec.describe 'SignUp', type: :feature do
  it 'loads the sign-up page' do
    visit signup_path # Adjust this path to your app's sign-up page route
    expect(page).to have_content('Sign Up') # Adjust to match your page content
  end

  it 'creates a new user with valid information' do
    visit signup_path
    fill_in 'Email', with: 'newuser@example.com' # Adjust to match your form fields
    fill_in 'Password', with: 'password' # Adjust to match your form fields
    fill_in 'Password confirmation', with: 'password' # Adjust to match your form fields
    click_button 'Sign up' # Adjust to match your form button

    expect(current_path).to eq(root_path) # Adjust to the expected path after sign-up
    expect(page).to have_content('Logout') # Adjust to match expected content after sign-up
  end

  it 'shows errors with invalid information' do
    visit signup_path
    fill_in 'Email', with: '' # Leave required fields blank to trigger validation errors
    click_button 'Sign up'

    expect(page).to have_content("Email can't be blank") # Adjust to match your validation error messages
  end
end

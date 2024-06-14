require 'rails_helper'

RSpec.describe 'UserProfile', type: :feature do
  before do
    # Mock the authentication
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
    visit user_google_oauth2_omniauth_authorize_path # Adjust this path to your app's route
    click_on 'Sign in with Google' # Adjust this action to match your app's flow
  end

  it 'shows the user profile page to logged in users' do
    visit profile_path # Adjust this path to your app's profile page route

    expect(page).to have_content('Test User') # Adjust this to match the content you expect
    # Add more expectations here as needed
  end
end

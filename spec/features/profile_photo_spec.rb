require 'rails_helper'

feature 'profile photo' do
  scenario 'user uploads a profile photo' do
    visit new_user_registration_path

    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    fill_in 'Username', with: 'username'
    fill_in 'First Name', with: 'John'
    fill_in 'Last Name', with: 'Wick'

    attach_file :user_profile_photo, "#{Rails.root}/spec/support/images/photo.png"

    click_button 'Sign up'
 
    expect(page).to have_css(".profile_photo")
  end
end
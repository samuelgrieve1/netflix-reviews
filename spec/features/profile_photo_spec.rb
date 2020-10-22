require 'rails_helper'

feature 'profile photo' do
  scenario 'user uploads a profile photo' do
    visit root_path
    click_link 'Sign Up'

    fill_in 'Email', with: 'johnwick@gmail.com'
    fill_in 'Password', with: 'notthepuppy!13'
    fill_in 'Password confirmation', with: 'notthepuppy!13'
    attach_file :user_profile_photo, "#{Rails.root}/spec/support/images/photo.png"

    click_button 'Sign up'

    # expect(page).to have_css("profile_photo")
  end
end
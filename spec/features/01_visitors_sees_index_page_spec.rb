require 'rails_helper'

feature "visitor sees a list of netflix shows" do
    scenario "sees a list of netflix shows" do
        show_1 = NetflixShow.create(title: 'The 100', genre: 'Science Fiction', description: 'Humans killing each other with nukes all over the planet!')
        show_2 = NetflixShow.create(title: 'The Office', genre: 'Comedy')
  
      visit netflix_shows_path
  
      expect(page).to have_content "Netflix Shows"
      expect(page).to have_content "The 100"
      expect(page).to have_content "The Office"
    end
end
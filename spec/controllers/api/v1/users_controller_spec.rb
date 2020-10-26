require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  let!(:user_1) { User.create(
    email: "first1@email.com", 
    password: "123456", 
    username: "Mad Ducks", 
    first_name: "Maddox", 
    last_name: "Grey"
  )}
  let!(:show_1) { NetflixShow.create(
    title: "The 100", 
    genre: "Science Fiction", 
    description: "Humans killing each other with nukes all over the planet!"
  ) }
  let!(:review_1) { Review.create(
    netflix_show: show_1,
    user: user_1,
    comment: "Why'd they even come down to Earth?",
    rating: 5
  )}

  describe 'GET#show' do
    it "should return the username, first name, last name, and email of an individual user on its own show page" do
      get :show, params: {id: user_1.id}
      returned_response = JSON.parse(response.body)

      expect(returned_response["username"]).to eq user_1.username
      expect(returned_response["first_name"]).to eq user_1.first_name
      expect(returned_response["last_name"]).to eq user_1.last_name
      expect(returned_response["email"]).to eq user_1.email

      expect(returned_response["reviews"][0]["comment"]).to eq show_1.reviews[0]["comment"]
      expect(returned_response["reviews"][0]["rating"]).to eq show_1.reviews[0]["rating"]
      expect(returned_response["reviews"][0]["netflix_show"]["title"]).to eq show_1.title
    end
  end
end

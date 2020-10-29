require 'rails_helper'

RSpec.describe Api::V1::NetflixShowsController, type: :controller do
  let!(:show_1) { NetflixShow.create(
    title: "The 100", 
    genre: "Science Fiction", 
    description: "Humans killing each other with nukes all over the planet!"
  ) }
  let!(:show_2) { NetflixShow.create(
    title: "The Office", 
    genre: "Comedy" 
  ) }
  let!(:user_1) { User.create(
    email: "first1@email.com", 
    password: "123456", 
    username: "Mad Ducks", 
    first_name: "Maddox", 
    last_name: "Grey"
  )}
  let!(:review_1) { Review.create(
    netflix_show: show_1,
    user: user_1,
    comment: "Why'd they even come down to Earth?",
    rating: 5
  )}
  
  describe 'GET#index' do
    it 'return a successful status and content type of json' do
      get :index
        expect(response.status).to eq 200
        expect(response.content_type).to eq 'application/json'
    end

    it 'should return the netflix show titles, genre and average rating from the database' do
      get :index 
        returned_response = JSON.parse(response.body)
        expect(returned_response.length).to eq 2
        
        expect(returned_response[0]["title"]).to eq show_1.title
        expect(returned_response[0]["genre"]).to eq show_1.genre
        expect(returned_response[0]["average_rating"].to_i).to eq show_1.average_rating
        expect(returned_response[1]["title"]).to eq show_2.title
      end
    end
    
    describe "GET#show" do
    it "should return the title, genre and description and average_rating of an individual show on its own show page" do
      get :show, params: {id: show_1.id}
      returned_response = JSON.parse(response.body)
      
      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
  
      expect(returned_response["title"]).to eq show_1.title
      expect(returned_response["genre"]).to eq show_1.genre
      expect(returned_response["description"]).to eq show_1.description
      expect(returned_response["average_rating"].to_i).to eq show_1.average_rating

      expect(returned_response["reviews"][0]["comment"]).to eq show_1.reviews[0]["comment"]
      expect(returned_response["reviews"][0]["rating"]).to eq show_1.reviews[0]["rating"]
    end
  end
end

require "rails_helper"

RSpec.describe Api::V1::NetflixShowsController, type: :controller do
  let!(:show1) { NetflixShow.create(
    title: "The 100", 
    genre: "Science Fiction", 
    description: "Humans killing each other with nukes all over the planet!"
  ) }
  let!(:show2) { NetflixShow.create(
    title: "The Office", 
    genre: "Comedy", 
    description: "Steven Carell ruins a company"
  ) }

  describe "GET#show" do

    it "return a successful status and content type of json" do
      get :show
      
      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
    end

    it "should return the title, genre and description of an individual show on its own show page" do
      get :show
      returned_response = JSON.parse(response.body)
      binding.pry

      expect(returned_response[0]["title"]).to eq show1.title
      expect(returned_response[0]["genre"]).to eq show1.genre
      expect(returned_response[0]["description"]).to eq show1.description
    
      expect(returned_response[1]["title"]).to eq show2.title
      expect(returned_response[1]["genre"]).to eq show2.genre
      expect(returned_response[1]["description"]).to eq show2.description
    end
  end
end
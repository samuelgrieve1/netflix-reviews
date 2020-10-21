require "rails_helper"

RSpec.describe Api::V1::NetflixShowsController, type: :controller do
  let!(:show1) { NetflixShow.create(
    title: "The 100", 
    genre: "Science Fiction", 
    description: "Humans killing each other with nukes all over the planet!"
  ) }

  describe "GET#show" do
    it "should return the title, genre and description of an individual show on its own show page" do
      
      get :show, params: {id: show1.id}
      returned_response = JSON.parse(response.body)
      
      expect(response.status).to eq 200
      expect(response.content_type).to eq "application/json"
      
  
      expect(returned_response["title"]).to eq "The 100"
      expect(returned_response["genre"]).to eq "Science Fiction"
      expect(returned_response["description"]).to eq "Humans killing each other with nukes all over the planet!"
    end
  end
end
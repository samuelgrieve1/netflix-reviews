require 'rails_helper'

RSpec.describe Api::V1::NetflixShowsController, type: :controller do
  describe 'GET#index' do
    show_1 = NetflixShow.create(title: 'The 100', genre: 'Science Fiction', description: 'Humans killing each other with nukes all over the planet!')
    show_2 = NetflixShow.create(title: 'The Office', genre: 'Comedy')

    it 'return a successful status and content type of json' do
      get :index
        expect(response.status).to eq 200
        expect(response.content_type).to eq 'application/json'
    end

    it 'should return the netflix show titles from the database' do
      get :index 
        returned_response = JSON.parse(response.body)
        
        expect(returned_response.length).to eq 2

        expect(returned_response[0]['title']).to eq show_1.title

        expect(returned_response[1]['title']).to eq show_2.title
    end

  end
end

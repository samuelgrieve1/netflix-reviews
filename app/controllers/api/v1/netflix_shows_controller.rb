class Api::V1::NetflixShowsController < ApiController
  def index
    render json: NetflixShow.all
  end
end
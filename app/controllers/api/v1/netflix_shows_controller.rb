class Api::V1::NetflixShowsController < ApiController
  def index
    render json: NetflixShow.all, each_serializer: NetflixShowSerializer
  end
  
  def show
    render json: NetflixShow.find(params[:id]), serializer: NetflixShowSerializer
  end
end
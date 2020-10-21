class Api::V1::NetflixShowsController < ApplicationController
  def show
    render json: { netflix_show: NetflixShow.find(params[:id]) }
  end
end
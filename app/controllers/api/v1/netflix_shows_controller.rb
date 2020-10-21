class Api::V1::NetflixShowsController < ApplicationController
  def show
    render json: NetflixShow.find(params[:id])
  end
end
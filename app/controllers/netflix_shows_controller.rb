class NetflixShowsController < ApplicationController
  def index
    @netflix_shows = NetflixShow.all
  end

  def show
    @netflix_show = NetflixShow.find(params[:id])
  end
end
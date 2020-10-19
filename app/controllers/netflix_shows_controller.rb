class NetflixShowsController < ApplicationController
  def index
    @netflix_shows = NetflixShow.all
  end
end
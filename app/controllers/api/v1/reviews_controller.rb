class Api::V1::ReviewsController < ApplicationController
  def update
    render json: Reviews.find(params[:id]), serializer: ReivewSerializer
  end
end
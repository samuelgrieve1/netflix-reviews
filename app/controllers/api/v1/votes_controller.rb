class Api::V1::VotesController < ApplicationController
  def update
    binding.pry
    review = Review.find(params[:id])
    review.votes += params["_json"]
    render json: review, serializer: ReviewSerializer
  end
end
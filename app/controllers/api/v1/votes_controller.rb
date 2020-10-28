class Api::V1::VotesController < ApplicationController
  def create
    review = Review.find(params["review_id"])
    review.votes_total += params["_json"]
    render json: review, serializer: ReviewSerializer
  end
  
  def update
    review = Review.find(params[:id])
    review.votes += params["_json"]
    render json: review, serializer: ReviewSerializer
  end
end
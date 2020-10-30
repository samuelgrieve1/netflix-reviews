class Api::V1::VotesController < ApplicationController
  def create
    review = Review.find(params["review_id"])
    user = current_user
    vote = Vote.new(user: user, review: review, user_vote_value: params["_json"])

    if vote.save
      review.votes_total += vote.user_vote_value
      review.save
    end
    render json: review, serializer: ReviewSerializer
  end
end
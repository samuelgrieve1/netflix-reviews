class Api::V1::ReviewsController < ApplicationController

  def create
    binding.pry
    # look at params, get show object so that review can belong to a show
    new_review = Review.new(review_params)

    if new_review.save
      render json: new_review
    else
      render json: { errors: new_review.errors.fullmessages }
    end
  end

  def review_params
    params.require(:review).permit()
  end
end
class Api::V1::ReviewsController < ApplicationController

  def create
    # render json: NetflixShow.find(params[:id]), serializer: NetflixShowSerializer
    
    new_review = Review.new(review_params)

    if new_review.save
      render json: new_review
    else
      render json: { errors: new_review.errors.fullmessages }
    end
  end

  def review_params
    params.require(:review).permit([:comment, :rating])
  end
end
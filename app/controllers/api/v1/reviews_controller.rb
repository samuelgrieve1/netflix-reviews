class Api::V1::ReviewsController < ApiController

  def create
    show = NetflixShow.find(params[:netflix_show_id])
    new_review = Review.new(review_params)
    new_review.netflix_show = show 

    if new_review.save
      render json: new_review
    else
      render json: { errors: new_review.errors.full_messages }
    end
  end

  def review_params
    params.require(:review).permit([:comment, :rating])
  end
end
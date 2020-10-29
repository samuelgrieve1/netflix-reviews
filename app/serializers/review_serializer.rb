class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :netflix_show, :comment, :rating, :votes_total

  belongs_to :user, if: :requestMethod
  belongs_to :netflix_show
  has_many :votes


  def requestMethod
    # if (current_review.votes.users.includes(current_user))
    #   "PATCH"
    # else
    #   "POST"
    # end
  end
end
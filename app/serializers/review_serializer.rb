class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :netflix_show, :comment, :rating, :votes

  belongs_to :user
  belongs_to :show
end
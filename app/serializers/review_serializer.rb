class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :netflix_show, :comment, :rating, :votes_total

  belongs_to :user
  belongs_to :netflix_show
  has_many :votes

end
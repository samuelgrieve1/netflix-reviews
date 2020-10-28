class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :netflix_show, :comment, :rating

  belongs_to :user
  belongs_to :show
  has_many :votes
end
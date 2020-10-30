class VotesSerializer < ActiveModel::Serializer
  attributes :id, :user, :review, :votes

  belongs_to :user
  belongs_to :review
end
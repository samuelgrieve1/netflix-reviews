class VotesSerializer < ActiveModel::Serializer
  attributes :id, :user, :review, :vote

  belongs_to :user
  belongs_to :review
end
class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating

  belongs_to :user, if: :current_user?

  def current_user?
    # binding.pry
    # current_user == object.user is the better way
    scope == object.user
  end
end
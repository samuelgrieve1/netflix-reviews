class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating

  belongs_to :user, if: :current_user?

  def current_user?
    scope == object.user
  end
end
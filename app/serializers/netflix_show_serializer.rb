class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description

  has_many :reviews

  def review_average

  end
end
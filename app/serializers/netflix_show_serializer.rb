class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description

  has_many :reviews
end
class NetflixSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :average_rating
end
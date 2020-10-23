class NetflixSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description
end
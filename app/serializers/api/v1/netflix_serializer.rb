class Api::V1::NetflixSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description
end
class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :currentUser

  has_many :reviews

  def currentUser
    current_user
  end
end
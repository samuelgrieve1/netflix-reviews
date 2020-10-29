class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :user_signed_in, :currentUser, :average_rating
  
  def user_signed_in
    if !current_user
      return false
    else
      return true
    end
  end

  def currentUser
    current_user
  end
  
  has_many :reviews
end
class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :currentUser, :user_signed_in
  
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
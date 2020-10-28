class NetflixShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :user_signed_in
  
  def user_signed_in
    if !current_user
      return false
    else
      return true
    end
  end

  has_many :reviews
end
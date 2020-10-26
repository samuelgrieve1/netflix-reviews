class UserShowSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :username, :first_name, :last_name

  has_many :reviews
end
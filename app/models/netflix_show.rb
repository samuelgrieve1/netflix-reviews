class NetflixShow < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :genre, presence: true
end
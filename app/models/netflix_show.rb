class NetflixShow < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
end
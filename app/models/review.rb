class Review < ApplicationRecord
  belongs_to :user
  belongs_to :netflix_show

  validates :user, presence: true
  validates :netflix_show, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
end
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :netflix_show

  validates :user, presence: true
  validates :netflix_show, presence: true
  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
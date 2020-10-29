class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :user, presence: true
  validates :review, presence: true
  validates :user_vote_value, presence: true
end
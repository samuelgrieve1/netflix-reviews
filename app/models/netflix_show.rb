class NetflixShow < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :genre, presence: true

  def average_rating
    if self.reviews
      counter = 0
      self.reviews.each do |review|
        counter += review.rating
      end
      (counter.to_f/self.reviews.length.to_f).ceil(1)
    else
      "No ratings yet."
    end
  end
end
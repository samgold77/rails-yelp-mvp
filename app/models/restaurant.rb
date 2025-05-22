class Restaurant < ApplicationRecord

has_many :reviews, dependent: :destroy

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

validates :name, :address, :category, presence: true
validates :category, inclusion: { in: CATEGORIES }

  def average_rating
    return nil if reviews.empty?
    reviews.average(:rating).round(1)
  end
end

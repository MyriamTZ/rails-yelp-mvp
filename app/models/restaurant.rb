class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # on détruit les avis lorsqu'on détruit un restaurant

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
  # has_many :children, dependent: :destroy
end

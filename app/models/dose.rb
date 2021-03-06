class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient,
  message: "should had 1 time each ingredient only" }
  validates :ingredient, presence: true
end

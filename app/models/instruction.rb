class Instruction < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :quantitynb, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient,
  message: "should had 1 time each ingredient only" }
  validates :ingredient, presence: true
end
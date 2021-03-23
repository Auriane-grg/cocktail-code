class Cocktail < ApplicationRecord
  belongs_to :user

  has_many :instructions
  has_many :ingredients, through: :instructions
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end

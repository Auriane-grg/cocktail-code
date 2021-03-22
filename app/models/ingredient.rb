class Ingredient < ApplicationRecord
  has_many :instructions
  before_save :capitalize_name

  validates :name, presence: true
  validates_uniqueness_of :name, :case_sensitive => false

  def capitalize_name
    self.name.capitalize!
  end

end

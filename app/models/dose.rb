class Dose < ApplicationRecord
  validates :description, presence: true
  # validates :cocktail, presence: true, allow_blank: false
  # validates :ingredient, presence: true, allow_blank: false
  validates :cocktail, uniqueness: { scope: :ingredient }

  belongs_to :ingredient
  belongs_to :cocktail
end

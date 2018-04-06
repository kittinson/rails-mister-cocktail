class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, uniqueness: { scope: :ingredient }
  # validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # validates :cocktail, presence: :true
end

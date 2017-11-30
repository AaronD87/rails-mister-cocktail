class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_nil: false
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end

class Cocktail < ActiveRecord::Base
  has_many :doses, :dependent => :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true, allow_nil: false
end

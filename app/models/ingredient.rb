class Ingredient < ActiveRecord::Base
  has_many :doses
  validates :name, uniqueness: true
  validates :name, presence: true, allow_nil: false
end

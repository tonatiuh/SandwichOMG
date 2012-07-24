class Sandwich < ActiveRecord::Base
  has_many :ingredients
  attr_accessible :name, :ingredients_attributes, :type
  validates :name, presence: { message: ": This bad boy needs to have a name." }
  
  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }
end

class Ingredient < ActiveRecord::Base
  belongs_to :sandwich
  attr_accessible :name
  validates :name, presence: { message: "This attribute is required." }
end

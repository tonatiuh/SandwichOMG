class Ingredient < ActiveRecord::Base
  attr_accessible :name, :sandwich_id
  validates :name, presence: { message: "This attribute is required." }
end

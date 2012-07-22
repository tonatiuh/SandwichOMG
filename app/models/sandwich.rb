class Sandwich < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: { message: "This bad boy needs to have a name." }
end

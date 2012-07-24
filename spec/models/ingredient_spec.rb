require 'spec_helper'

describe Ingredient do
  it "validates presence of name" do
    ingredient = Ingredient.new(name: nil)
    ingredient.should validate_presence_of(:name).with_message("This attribute is required.")
  end
end
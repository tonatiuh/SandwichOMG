require 'spec_helper'

describe Sandwich do
  it 'validates presence of name' do
    sandwich = Sandwich.new(name: nil)
    sandwich.should validate_presence_of(:name).with_message(": This bad boy needs to have a name.")
  end
  
  it 'includes at least one ingredient' do
    sandwich = create(:sandwich)
    ingredient = create(:ingredient)
    sandwich.ingredients.should have_at_least(1).ingredient
  end
end

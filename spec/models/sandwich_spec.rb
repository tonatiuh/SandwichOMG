require 'spec_helper'

describe Sandwich do
  it 'validates presence of name' do
    sandwich = Sandwich.new(name: nil)
    sandwich.should validate_presence_of(:name).with_message("This bad boy needs to have a name.")
  end
end

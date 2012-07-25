class Sandwich < ActiveRecord::Base
  #if adding ingredients :ingredients_attributes
  
  belongs_to :user
  attr_accessible :name, :sandwich_type, :user_message, :no_login_email
  attr_accessor :user_message, :no_login_email
  validates :name, presence: { message: ": This bad boy needs to have a name." }
  
  #accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }
end

class Sandwich < ActiveRecord::Base
  #if adding ingredients :ingredients_attributes
  
  belongs_to :user
  attr_accessible :name, :sandwich_type, :user_message, :no_login_email
  attr_accessor :user_message, :no_login_email
  validates :name, presence: { message: ": This bad boy needs to have a name." }
  validates :sandwich_type, presence: { message: "We need to know what type of sandwich you want." }
  
  rescue Twitter::Error => e
    logger.error "#{e.message}."
    raise StandardError.new("Could not update status")
    
  #accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }
  def self.reordered id
    sandwich = find(id)
    sandwich.updated_at = Time.now
    sandwich.save
  end
end

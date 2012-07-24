require 'sandwicher'
class SandwichesController < ApplicationController
  attr_accessor :message, :email
  def index
  end

  def new
    @sandwich = Sandwich.new
  end

  def create
    if response = Sandwicher::Sandwich.make(params[:sandwich][:user_message])
      @sandwich = Sandwich.new(params[:sandwich])
      raise @sandwich.to_yaml
    else
      redirect_to angry_sandwicher_path
    end
  end
  
  def angry_sandwicher
    
  end
end

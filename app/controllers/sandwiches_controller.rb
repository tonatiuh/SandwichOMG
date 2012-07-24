require 'sandwicher'
class SandwichesController < ApplicationController
  attr_accessor :message, :email
  def index
  end

  def new
    @sandwich = Sandwich.new
  end

  def create
    @sandwich = Sandwich.new(params[:sandwich])
    raise @sandwich.to_yaml
  end
end

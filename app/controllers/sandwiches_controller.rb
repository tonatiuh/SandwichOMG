#This is the guy that makes the sandwiches
require 'sandwicher'

class SandwichesController < ApplicationController
  def index
  end

  def new
    @sandwich = Sandwich.new
  end

  def create
    if response = Sandwicher::Sandwich.make(params[:sandwich][:user_message])
      if current_user
        @sandwich = current_user.sandwiches.build(params[:sandwich])
        if @sandwich.save
          redirect_to order_complete_path, notice: "We're taking care of buisnes here, we will notify you when your sandwich is ready."
        else
          render :new
        end
      else
        redirect_to order_complete_path
      end
    else
      redirect_to angry_sandwicher_path
    end
  end
  
  def angry_sandwicher
  end
end

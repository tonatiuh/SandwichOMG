class UsersController < ApplicationController
  before_filter :authenticate_user
  def show
    @user = User.find(params[:id])
  end
  
  private
  
  def authenticate_user
    unless current_user
      redirect_to root_path, alert: 'You cannot look at other people profile, please login first if you want to visit yours.'
    end
  end
end

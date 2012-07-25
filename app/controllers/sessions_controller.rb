class SessionsController < ApplicationController
  def create
    user = User.use_the_omniauth env["omniauth.auth"]
    session[:user_id] = user.id
    redirect_to root_path, notice: "Successfully signed in!"
  end
end
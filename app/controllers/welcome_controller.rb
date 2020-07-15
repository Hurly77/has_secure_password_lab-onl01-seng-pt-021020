class WelcomeController < ApplicationController
  def welcome
    if session[:user_id].nil? || session[:user_id].empty?
      redirect_to new_session_path
    else
      render :welcome
    end
  end
end
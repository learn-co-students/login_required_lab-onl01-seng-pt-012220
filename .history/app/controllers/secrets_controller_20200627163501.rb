class SecretsController < ApplicationController
  def show
    byebug
    if session[:name]== nil || session[:name].empty?
      redirect_to '/login'
    else
      render '/show'
    end
  end
end

class SecretsController < ApplicationController
  def show
    if session[:name]== nil || session[:name].empty?
      redirect_to '/login'
    end
  end
  
end

class SecretsController < ApplicationController
  def show
    if session[:name]== nil || session[:name].empty?
      redirect_to '/login'
    end
  end

  private 
  def require_login
    return head(:forbidden) unless session.include? :name
  end
  
end
